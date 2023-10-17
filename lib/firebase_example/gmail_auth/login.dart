import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:project1/firebase_example/gmail_auth/register.dart';
import 'package:project1/firebase_example/gmail_auth/services/auth_services.dart';
import 'package:project1/firebase_example/gmail_auth/textfield.dart';

class LoginPage extends StatefulWidget {

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final userController = TextEditingController();
  final passController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 100),
               const Icon(
                Icons.lock,
                size: 100,
              ),
               SizedBox(height: 30),
               const Text(
                "Welcome back you've been missed!",
                style: TextStyle(color: Colors.blueGrey),
              ),
               SizedBox(height: 20),
              MyTextfield(controller: userController,
                  obscureText: false, hintText: "Username"),
              SizedBox(height: 18),
              MyTextfield(
                  controller: passController,
                  obscureText: true, hintText: 'password'),
              SizedBox(height: 10),
              const Padding(
                padding: EdgeInsets.only(left: 200),
                child: Text(
                  "Forgot Password?",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Container(
                    height: 40,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(6)),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black),
                        onPressed: () {},
                        child: Text('Login'))),
              ),
              SizedBox(height: 20),
              Text("Or continue with"),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 40,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: GestureDetector(
                      onTap: ()=>Auth().signInwithgoogle(),
                        child: Image.asset("assets/images/google.png",fit: BoxFit.cover,)),
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
                        child: Image.asset("assets/images/apple.png",fit: BoxFit.cover)),
                  )
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Not a member ?"),
                  TextButton(
                      onPressed: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => SignUp()));
                      },
                      child: const Text(
                        "Register Now",
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