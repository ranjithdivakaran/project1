import 'dart:io';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart' as path;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: "AIzaSyDCZ_gWSmc8ye8RyrVRSeUITwcfnA_t2H4",
      projectId: "new-project-b37e0",
      appId: '1:35700805340:android:42eac1c7c55e815a1b6e19',
      messagingSenderId: '',
      storageBucket: "new-project-b37e0.appspot.com",
    ),
  );
  runApp(const MaterialApp(
    home: Firemediastorage(),
  ));
}

class Firemediastorage extends StatefulWidget {
  const Firemediastorage({super.key});

  @override
  State<Firemediastorage> createState() => _FiremediastorageState();
}

class _FiremediastorageState extends State<Firemediastorage> {
  FirebaseStorage storage = FirebaseStorage.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Storage"),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Row(
              children: [
                ElevatedButton.icon(
                  onPressed: () => upload('camera'),
                  icon: Icon(Icons.camera_alt),
                  label: Text("camera"),
                ),SizedBox(width: 20,),
                ElevatedButton.icon(
                  onPressed: () => upload('gallery'),
                  icon: Icon(Icons.photo),
                  label: Text("Gallery"),
                ),
              ],
            ),
            Expanded(
              child: FutureBuilder(
                  future: loadmedia(),
                  builder: (context,
                      AsyncSnapshot<List<Map<String, dynamic>>> snapshot) {
                    if (snapshot.connectionState == ConnectionState.done) {
                      return ListView.builder(
                          itemCount: snapshot.data?.length ?? 0,
                          itemBuilder: (context, index) {
                            final Map<String,dynamic> images=snapshot.data![index];
                            return Card(
                              child: ListTile(
                                leading: Image.network(images['imageurl']),
                                title: Text(images['uplodedby']),
                                subtitle: Text(images['description']),
                                trailing: IconButton(onPressed: ()=>deletemedia(images['path']), icon: Icon(Icons.delete)),
                              ),
                            );
                          });
                    }
                    return const Center(child: CircularProgressIndicator(),);
                  }),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> upload(String imagesource) async {
    final imgpicker = ImagePicker();
    XFile? pickedimage;
    try {
      pickedimage = await imgpicker.pickImage(
          source: imagesource == 'camera'
              ? ImageSource.camera
              : ImageSource.gallery);
      final String filename = path.basename(pickedimage!.path);
      File imagefile = File(pickedimage.path); //import dart io
      try {
        await storage.ref(filename).putFile(
            imagefile,
            SettableMetadata(customMetadata: {
              'uploadedby': "its me ",
              'description': "descrptionn...."
            }));
        setState(() {}); //refresh ui
      } on FirebaseException catch (error) {
        print(error);
      }
    } catch (error) {
      print(error);
    }
  }

  Future<List<Map<String, dynamic>>> loadmedia() async {
    List<Map<String, dynamic>> images = [];
    final ListResult result = await storage.ref().list();
    final List<Reference> allfiles = result.items;
    await Future.forEach(allfiles, (element) async {
      final String fileurl = await element.getDownloadURL();
      final FullMetadata metadata = await element.getMetadata();

      images.add({
        'imageurl': fileurl,
        'path': element.fullPath,
        'uplodedby': metadata.customMetadata?['uplodedby'] ?? 'no data',
        'description':
            metadata.customMetadata?['description'] ?? 'no description'
      });
    });
    return images;
  }

 Future<void> deletemedia(String imagepath) async{
    await storage.ref(imagepath).delete();
    setState(() {});
 }
}
