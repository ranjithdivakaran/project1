import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Gridviewextend(),
  ));
}

class Gridviewextend extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.extent(
        maxCrossAxisExtent: 70,
        children: List.generate(
            20,
            (index) => Card(color: Colors.greenAccent,
                  child: Column(
                    children: [
                      Text("Hii"),
                      Icon(Icons.account_balance),
                    ],
                  ),
                )),
      ),
    );
  }
}
