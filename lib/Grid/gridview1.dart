import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Gridview1(),
  ));
}

class Gridview1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GridView"),
      ),
      body: GridView(
        gridDelegate:
           SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        // SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 70),
        children: List.generate(
          10,
          (index) => Card(color: Colors.green,
            child: Center(
              child: Icon(Icons.accessibility_outlined),
            ),
          ),
        ),
      ),
    );
  }
}
