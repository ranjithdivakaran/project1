import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:project1/firebase_example/gmail_auth/register.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: const FirebaseOptions(
        apiKey: "AIzaSyDCZ_gWSmc8ye8RyrVRSeUITwcfnA_t2H4",
        projectId: "new-project-b37e0",
        appId: '1:35700805340:android:42eac1c7c55e815a1b6e19',
        messagingSenderId: '',
      ),
  );
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FlutterFire Samples',
      debugShowCheckedModeBanner: false,
      home: SignUp(),
    );
  }
}