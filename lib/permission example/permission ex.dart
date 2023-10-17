import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';
void main(){
  runApp(MaterialApp(home: Permissionexample(),));
}
class Permissionexample extends StatefulWidget {
  const Permissionexample({super.key});

  @override
  State<Permissionexample> createState() => _PermissionexampleState();
}

class _PermissionexampleState extends State<Permissionexample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ElevatedButton(
              onPressed: requestcamerapermissin, child: Text("request camera permisssion")),
          ElevatedButton(
              onPressed: requestmultiplepermission, child: Text("request multiple permission")),
          ElevatedButton(
              onPressed: opensettingspermission, child: Text("open permission settins")),
        ],
      ),
    );
  }

void requestcamerapermissin() async{
    var status=await Permission.camera.status;
    if(status.isGranted){
      ///open camera
      ImagePicker picker=ImagePicker();
      picker.pickImage(source: ImageSource.camera);
    }else if(status.isDenied){
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("permission denied")));
      if(await Permission.camera.request().isGranted){
        //either the camera was already granted or the user just granted it.
      }
    }
}
void requestmultiplepermission()async{
    Map<Permission,PermissionStatus> statuses=await [
      Permission.location,
      Permission.storage,
      Permission.phone,
      Permission.photos,
    ].request();
    print("location permission:${statuses[Permission.location]},"
    "storage permission:${statuses[Permission.storage]}"
    );
}
void opensettingspermission()async{
    openAppSettings();
}
}
