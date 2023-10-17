import 'package:flutter/material.dart';
import 'package:project1/passing%20data%20between%20screens/using%20constructor/tostatefulpage.dart';
import 'package:project1/passing%20data%20between%20screens/using%20constructor/tostatelesspage.dart';

void main() {
  runApp(MaterialApp(
    home: Datapage(),
  ));
}

class Datapage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("passing data between Screens using constructor"),
      ),
      body: Container(
        alignment: Alignment.center,
        height: 250,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => Statelesspage(
                          name: "luminar",
                          location: "kakkanad",
                          phone: 12345566)));
                },
                child: Text("to stateless page")),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => Statefullpage(
                          name: "luminar",
                          location: "kakkanad",
                          phone: 22222222222)));
                },
                child: Text("to statefulp page")),
          ],
        ),
      ),
    );
  }
}
