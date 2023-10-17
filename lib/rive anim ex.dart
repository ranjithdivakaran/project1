import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

void main() {
  runApp(MaterialApp(
    home: Riveex(),
  ));
}

class Riveex extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: RiveAnimation.asset("assets/Animation/jains-avatar.riv"),
      ),
    );
  }
}
