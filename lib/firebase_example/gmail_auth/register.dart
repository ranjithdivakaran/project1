import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:project1/firebase_example/gmail_auth/login.dart';
import 'package:project1/firebase_example/gmail_auth/services/auth_services.dart';
import 'package:project1/firebase_example/gmail_auth/textfield.dart';


//
// void main() {
//   runApp(const MaterialApp(
//     debugShowCheckedModeBanner: false,
//
//     home: SignUp(),
//   ));
// }

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 100,
              ),
              const Icon(
                Icons.lock,
                size: 100,
              ),
              const SizedBox(height: 30),
              const Text(
                "Welcome back you've been missed!",
                style: TextStyle(color: Colors.blueGrey),
              ),
              const SizedBox(height: 20),
              const MyTextfield(obscureText: false, hintText: 'Name'),
              SizedBox(height: 10),
              MyTextfield(obscureText: false, hintText: 'Email'),
              SizedBox(height: 18),
              const MyTextfield(
                obscureText: true,
                hintText: "password",
              ),
              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Container(
                    width: double.infinity,
                    height: 50,
                    child:
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
                        onPressed: () {}, child: Text("Sign In"))),
              ),
              SizedBox(height: 20),
              const Text("Or continue with"),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 30,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: GestureDetector(
                        onTap: ()=>Auth().signInwithgoogle(),
                        child: Image.asset("assets/images/google.png")),
                  ),
                  SizedBox(width: 10),
                  Container(
                    height: 40,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: GestureDetector(
                        onTap: (){},
                        child: Image.asset("assets/images/apple.png")),
                  )
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already a user?"),
                  TextButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => LoginPage()));
                      },
                      child: Text(
                        "Login now",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}