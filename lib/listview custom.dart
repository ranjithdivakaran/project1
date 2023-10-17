import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Listview_custom(),
  ));
}

class Listview_custom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("listview custom"),
      ),
      body: ListView.custom(
        childrenDelegate: SliverChildListDelegate(
          List.generate(
            10,
            (index) => Card(
              child: Text("hello"),
            ),
          ),
        ),
      ),
    );
  }
}
