import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Listview_custom2(),
  ));
}

class Listview_custom2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.custom(
        childrenDelegate: SliverChildBuilderDelegate(
          (context, index) => Align(
            alignment: Alignment.center,
            child: Text("hiii",style: TextStyle(
              fontSize: 20,color: Colors.green
            ),),
          ),
          childCount: 10,
        ),
      ),
    );
  }
}
