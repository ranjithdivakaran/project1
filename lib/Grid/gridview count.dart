import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Gridviewcount(),
  ));
}

class Gridviewcount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gridview Count"),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: List.generate(
          10,
          (index) => Card(color: Colors.teal,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Hello"),
                Icon(Icons.abc_sharp),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
