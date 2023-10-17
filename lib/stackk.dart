import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Stackk(),
    debugShowCheckedModeBanner: false,
  ));
}

class Stackk extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stack"),
        backgroundColor: Colors.blueGrey,
      ),
      body: Stack(
        children: [
          Container(
            height: 400,
            width: 400,
            color: Colors.blue,
          ),
          Container(
            height: 300,
            width: 300,
            color: Colors.red,
          ),
          Container(
            height: 200,
            width: 200,
            color: Colors.green,
          ),
          Positioned(
            right: 150,
            bottom: 150,
            child: Container(
              height: 100,
              width: 100,
              color: Colors.yellow,
            ),
          ),
        ],
      ),
    );
  }
}
