import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Listview_builder(),
  ));
}

class Listview_builder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("listview builder"),
      ),
      body: ListView.builder(itemBuilder: (context, index) {
        return Card(
          child: Center(
            child:Icon(Icons.accessibility_outlined),
          ),
        );
      }),
    );
  }
}
