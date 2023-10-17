import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Story1(),
    ),
  );
}

class Story1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Story"),
      ),
      body: Column(
        children: [
          Text("Hello"),
          Expanded(
            child: SingleChildScrollView(
              child: Text(
                  "dfgf"),
            ),
          ),
        ],
      ),
    );
  }
}
