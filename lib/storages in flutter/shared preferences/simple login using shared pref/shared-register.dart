import 'package:flutter/material.dart';
import 'package:project1/storages%20in%20flutter/shared%20preferences/simple%20login%20using%20shared%20pref/shared%20login.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(MaterialApp(
    home: SharedRegister(),
  ));
}

class SharedRegister extends StatefulWidget {
  const SharedRegister({super.key});

  @override
  State<SharedRegister> createState() => _SharedRegisterState();
}

class _SharedRegisterState extends State<SharedRegister> {
  final name = TextEditingController();
  final email = TextEditingController();
  final pass = TextEditingController();
  late SharedPreferences preferences;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Registration Page"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.blueGrey,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    hintText: "name"),
                controller: name,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.blueGrey,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    hintText: "email"),
                controller: email,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.blueGrey,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    hintText: "psw"),
                controller: pass,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                  onPressed: () async {
                    preferences = await SharedPreferences.getInstance();
                    String namee = name.text;
                    String username = email.text;
                    String password = pass.text;
                    if (namee != "" && password != "" && username != "") {
                      preferences.setString("names", namee);
                      preferences.setString("uname", username);
                      preferences.setString("pwd", password);
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) =>Loginshared()));
                    }
                    name.text = "";
                    email.text = "";
                    pass.text = "";
                  },
                  child: Text("Sign up")),
            )
          ],
        ),
      ),
    );
  }
}
