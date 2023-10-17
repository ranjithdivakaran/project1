import 'package:flutter/material.dart';
import 'package:project1/storages%20in%20flutter/shared%20preferences/simple%20login%20using%20shared%20pref/shared%20login.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Sharedhome extends StatefulWidget {
  const Sharedhome({super.key});

  @override
  State<Sharedhome> createState() => _SharedhomeState();
}

class _SharedhomeState extends State<Sharedhome> {
  late SharedPreferences preferences;
  late String username;

  @override
  void initState() {
    fetchdata(); //when the second page loads this method will exexcute
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text("WELCOME $username"),
            ElevatedButton(
                onPressed: () {
                  preferences.setBool("newuser", true);
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => Loginshared()));
                },
                child: Text("Logout"))
          ],
        ),
      ),
    );
  }


  void fetchdata() async {
    preferences = await SharedPreferences.getInstance();
    setState(() {
      username = preferences.getString("uname")!; //fetch the value from shared preference
    });
  }
}
