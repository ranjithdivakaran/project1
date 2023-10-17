import 'package:flutter/material.dart';
import 'package:project1/storages%20in%20flutter/shared%20preferences/simple%20login%20using%20shared%20pref/shared%20home.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(MaterialApp(
    home: Loginshared(),
  ));
}

class Loginshared extends StatefulWidget {
  const Loginshared({super.key});

  @override
  State<Loginshared> createState() => _LoginsharedState();
}

class _LoginsharedState extends State<Loginshared> {
  final email = TextEditingController();
  final pwd = TextEditingController();
  late SharedPreferences preferences; //late is used for future use
  late bool newuser;

  @override
  void initState() {
    check_if_user_already_login();
    super.initState();
  }

  void check_if_user_already_login() async {
    preferences = await SharedPreferences.getInstance();
    //?? - if the condition is null fetch the second value
    //check whether the user is already logged in, if getBool('userlogin') is null
    // which means user is new
    newuser = preferences.getBool("newuser") ?? true;
    if (newuser == false) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => Sharedhome()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login page"),
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
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    hintText: "password"),
                controller: pwd,
              ),
            ),
            ElevatedButton(
              onPressed: () async {
                preferences = await SharedPreferences.getInstance();
                String username = email.text;
                String pass = pwd.text;
                String? storeduname = preferences.getString('uname');
                String? storedpassword = preferences.getString("pwd");
                if (storeduname == username && storedpassword == pass) {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => Sharedhome()));
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text("Invalid username or password"),
                      backgroundColor: Colors.red,
                    ),
                  );
                }

                // if (username != "" && pass != "") {
                //   preferences.setString("uname", username);
                //   preferences.setString("pword", pass);
                //   //set the user logged in
                //   preferences.setBool("newuser", false);
                //   Navigator.push(context,
                //       MaterialPageRoute(builder: (context) => Sharedhome()));
                // }
                // to clear text fields
                email.text = "";
                pwd.text = "";
              },
              child: Text("Login"),
              style: ButtonStyle(
                  shadowColor: MaterialStatePropertyAll(Colors.black)),
            )
          ],
        ),
      ),
    );
  }
}
