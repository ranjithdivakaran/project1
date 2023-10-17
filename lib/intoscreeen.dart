import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:project1/splash2.dart';
import 'package:project1/statefull%20login.dart';

void main() {
  runApp(MaterialApp(
    home: Introscreen(),
    debugShowCheckedModeBanner: false,
  ));
}

class Introscreen extends StatelessWidget {
  const Introscreen({super.key});

  @override
  Widget build(BuildContext context) {
    PageDecoration pageDecoration = PageDecoration(
      titleTextStyle: TextStyle(
          fontWeight: FontWeight.w600, fontSize: 50, color: Colors.blue),
      bodyTextStyle: GoogleFonts.aBeeZee(
          color: Colors.redAccent, fontSize: 20, fontWeight: FontWeight.bold),
      boxDecoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          Colors.grey,
          Colors.white70,
          Colors.orange,
        ],
        begin: Alignment.bottomCenter,
        end:Alignment.topLeft ),
      )
    );
    return IntroductionScreen(
      pages: [
        PageViewModel(
          decoration: pageDecoration,
          title: "First Page",
          body: "Introduction screen to show the details of the app",
          image: IntroImage(
              "https://images.unsplash.com/photo-1457301547464-91995555cd25?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=896&q=80"),
        ),
        PageViewModel(
          decoration: pageDecoration,
          title: "Second Page",
          body: "Introduction screen to show the details of the app",
          image: IntroImage(
              "https://images.unsplash.com/photo-1653389521355-b3c576a4b7e5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8aW5yb2R1Y3Rpb24lMjBpbWFnZXN8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60"),
        ),
        PageViewModel(
          decoration: pageDecoration,
          title: "Third Page",
          body: "Introduction screen to show the details of the app",
          image: IntroImage(
              "https://images.unsplash.com/photo-1653389524385-9d831f930d83?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8aW5yb2R1Y3Rpb24lMjBpbWFnZXN8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60"),
        ),
      ],
      onDone: () => Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => Splash2())),
      onSkip: () => Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => Login2())),
      next: Icon(Icons.arrow_forward_ios_sharp),
      done: Text("done"),
      skip: Text("Skip"),
      showSkipButton: true,
      dotsDecorator: DotsDecorator(
        size: Size(10, 12),
        color: Colors.grey,
        activeSize: Size(25, 12),
        activeColor: Colors.green,
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
    );
  }

  Widget IntroImage(String image) {
    return Align(
      alignment: Alignment.center,
      child: Image.network(
        image,
        width: 500,
      ),
    );
  }
}
