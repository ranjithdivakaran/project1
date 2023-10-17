import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: ExitAppAlert(),
  ));
}

class ExitAppAlert extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future<bool> showAlert() async {
      return await showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: Text("Exit"),
              content: Text("do you really want to exit"),
              actions: [
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pop(true);
                    },
                    child: Text("yes")),
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pop(false);
                    },
                    child: Text("no")),
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pop(false);
                    },
                    child: Text("cancel")),
              ],
            );
          });
    }

    return WillPopScope(
        child: Scaffold(
          appBar: AppBar(
            title: Text("Text from App"),
          ),
          body: Center(
            child: Text("Press back button to exit"),
          ),
        ),
        onWillPop: showAlert);
  }
}
