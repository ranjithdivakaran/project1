import 'package:flutter/material.dart';

class Statelesspage extends StatelessWidget {
  final String name;
 final String location;
  int? phone;

   Statelesspage(
      {super.key,
       required this.name,
      required this.location,
      this.phone});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(name),
            Text(location),
            Text("$phone"),

          ],
        ),
      ),
    );
  }
}
