import 'package:flutter/material.dart';

class MyTextfield extends StatelessWidget {
  final  controller;
  final String hintText;
  final bool obscureText;
  const MyTextfield({
    this.controller,
    required this.obscureText,
    required this.hintText

  });
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: TextField(
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
          focusedBorder:
          OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black)
          ),
          hintText: hintText,
          filled: true,
          fillColor: Colors.white,
        ),
      ),
    );
  }
}