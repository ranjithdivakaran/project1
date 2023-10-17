import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
void main() {
  runApp(
    MaterialApp(
      home: Animations(),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class Animations extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animation"),
      ),
      body:
      ListView(
        children: [
          Lottie.asset("assets/Animation/animation.json"),
          Lottie.network("https://lottie.host/ff1b6021-92f0-4fd3-ad71-142c792f563c/sCkvt6Q1Kx.json"),
        ],
      ),
    );
  }
}
