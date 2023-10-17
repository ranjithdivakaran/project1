import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Bottomnavbar(),
  ));
}

class Bottomnavbar extends StatefulWidget {


  @override
  State<Bottomnavbar> createState() => _BottomnavbarState();
}

class _BottomnavbarState extends State<Bottomnavbar> {
  int index=1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("bottom bar"),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.lightGreen,
          selectedItemColor: Colors.yellow,
          type: BottomNavigationBarType.fixed,
          currentIndex:index ,
          onTap: (tappedindex){
          index=tappedindex;
          },
          items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
        BottomNavigationBarItem(icon: Icon(Icons.search), label: "search"),
      ]),
    );
  }
}
