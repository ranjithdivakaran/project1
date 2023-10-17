import 'package:flutter/material.dart';
import 'package:project1/Grid/gridview1.dart';
import 'package:project1/login.dart';
import 'package:project1/singlee.dart';
import 'package:project1/splash2.dart';
import 'package:project1/splash3.dart';
import 'package:project1/stackk.dart';

void main() {
  runApp(
    MaterialApp(
      home: Tabex(),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class Tabex extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightGreen,
          title: Text("Whats App"),
          elevation: 0,
          actions: [
            Icon(Icons.search),
            SizedBox(
              width: 15,
            ),
            Icon(Icons.camera_alt),
            PopupMenuButton(itemBuilder: (context) {
              return [
                PopupMenuItem(
                  child: Text("Settings"),
                ),
              ];
            })
          ],
          bottom: TabBar(
            indicatorSize: TabBarIndicatorSize.label,
            labelPadding: EdgeInsets.zero,
            tabs: [
              SizedBox(
                  width: MediaQuery.of(context).size.width * .1,
                  child: Icon(Icons.people_alt_sharp)),
              SizedBox(
                  width: MediaQuery.of(context).size.width * .3,
                  child: Text("chats")),
              SizedBox(
                  width: MediaQuery.of(context).size.width * .3,
                  child: Text("Status")),
              SizedBox(
                  width: MediaQuery.of(context).size.width * .3,
                  child: Text("Calls")),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            LoginPage(),
            Stackk(),
            Splash2(),
            Gridview1(),
          ],
        ),
      ),
    );
  }
}
