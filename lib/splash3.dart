import 'dart:async';

import 'package:flutter/material.dart';
import 'package:project1/statefull%20login.dart';

import 'login.dart';
void main(){
  runApp(MaterialApp(home:Splash3() ,));
}

class Splash3 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => Splash3State();
}

class Splash3State extends State {
  @override
  void initState() { //what will happen when the app or page is first launched
    Timer(Duration(seconds: 1), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>Login2()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset("assets/images/background.jpg"),
      ),
    );
  }
}
