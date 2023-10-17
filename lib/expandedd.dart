import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Expandedd(),
  ));
}

class Expandedd extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Expanded"),
      ),
      body: Column(
        children: [
          Expanded(
            child: Image.asset("assets/images/background.jpg"),
          ),
          Expanded(
            child: Image.asset("assets/images/background.jpg"),
          ),
          Expanded(
            child: Image.asset("assets/images/background.jpg"),
          ),
          Expanded(
            child: Image.asset("assets/images/background.jpg"),
          ),


        ],
      ),
    );
  }
}
