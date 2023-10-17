import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
void main(){
  runApp(MaterialApp(home: Bottomsheet(),));
}
class Bottomsheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("bottom sheet"),
      ),
      body: Center(
        child: GestureDetector(             // we can use inkwell also for performing events
          onLongPress: () =>showsheet(context),
          child: Image.asset("assets/images/background.jpg"),
        ),
      ),
    );
  }

  void showsheet(BuildContext context) {
    showModalBottomSheet(context: context, builder: (context){
      return Container(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              leading: FaIcon(FontAwesomeIcons.whatsapp,color: Colors.green,),
              title: Text("whatsapp"),
            ),
            ListTile(
              leading: FaIcon(FontAwesomeIcons.facebook,color: Colors.blue,),
              title: Text("facebook"),
            ),
            ListTile(
              leading: FaIcon(FontAwesomeIcons.twitter,color: Colors.blue,),
              title: Text("twitter"),
            ),
          ],
        ),
      );
    });
  }
}
