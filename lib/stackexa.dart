import 'dart:math';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    home: Stackexa(),
    debugShowCheckedModeBanner: false,
  ));
}

class Stackexa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stack"),
      ),
      body: Center(
        child: Stack(
          children: [
            Container(
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30), color: Colors.green),
              height: 200,
              width: 400,
            ),
            Positioned(
              left: 60,
              bottom: 40,
              child: Text("Arthur Tent",
                  style: GoogleFonts.adventPro(color: Colors.white70)),
            ),
            Positioned(
              height: 80,
              width: 80,
              right: 50,
              bottom: 10,
              child: Image.asset(
                "assets/images/visa.png",
              ),
            ),
            Transform.rotate(
              angle: 90 * pi / 180,
              child: Positioned(
                child: FaIcon(FontAwesomeIcons.wifi),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
