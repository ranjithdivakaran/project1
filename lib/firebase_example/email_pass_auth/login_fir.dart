import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:project1/firebase_example/email_pass_auth/reg_fir.dart';
import 'firbase_db.dart';
import 'home_fir.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
    apiKey: "AIzaSyDCZ_gWSmc8ye8RyrVRSeUITwcfnA_t2H4",
    projectId: "new-project-b37e0",
    appId: '1:35700805340:android:42eac1c7c55e815a1b6e19',
    messagingSenderId: '',
  ),);
  // to get the currently logined in user
  User? user = FirebaseAuth.instance.currentUser;
  runApp(MaterialApp(home: user == null ? LoginFire() : HomeFire()));
}

class LoginFire extends StatefulWidget {
  const LoginFire({super.key});

  @override
  State<LoginFire> createState() => _LoginFireState();
}

class _LoginFireState extends State<LoginFire> {
  final email = TextEditingController();
  final pass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Login")),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextField(
              decoration: InputDecoration(border: OutlineInputBorder(),hintText: "UserName"),
              controller: email,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextField(
              decoration: InputDecoration(border: OutlineInputBorder(),hintText: "PassWord"),

              controller: pass,
            ),
          ),
          ElevatedButton(
              onPressed: () {
                String mail = email.text.trim();
                String pwd = pass.text.trim();

                FirebaseHelper().signIn(email: mail, password: pwd).then((result) {
                  if (result == null) {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => HomeFire()));
                  } else {
                    ScaffoldMessenger.of(context)
                        .showSnackBar(SnackBar(content: Text(result)));
                  }
                });
              },
              child: const Text('Login')),
          TextButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Register_fire()));
              },
              child: Text("Not a user ? register here!!"))
        ],
      ),
    );
  }
}
