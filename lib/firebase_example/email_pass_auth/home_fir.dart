import 'package:flutter/material.dart';

import 'firbase_db.dart';
import 'login_fir.dart';


class HomeFire extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(onPressed: () {
          FirebaseHelper().signOut().then((result) =>
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => LoginFire())));
        }, child: Text("SignOut")),
      ),
    );
  }
}
