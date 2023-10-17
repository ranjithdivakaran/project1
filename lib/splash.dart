import 'package:flutter/material.dart';

void main() {
  //runapp -->attach our widget tree to the UI
  runApp(MaterialApp(    //default theme of our app
    home: SplashPage(),  //initial page to be launched
  ));
}
//stateless means this page does not undergo any statechanges
class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {      //Build context locate widgets on the widget tree
    return Scaffold(
      appBar: AppBar(title: Text("my splash page")),
    );
  }
}
