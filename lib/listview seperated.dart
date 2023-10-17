import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Listview_Seperated(),
  ));
}

class Listview_Seperated extends StatelessWidget {
  var months = [
    "jan",
    "feb",
    "mar",
    "apr",
    "may",
    "jun",
    "jul",
    "aug",
    "sep",
    "oct",
    "nov",
    "dec"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Align(
          alignment: Alignment.center,
            child: Text("listview seperated")),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) {
          return Card(
            child: Align(
                alignment: Alignment.center,
                child: Text(months[index])),
          );
        },
        separatorBuilder: (context, index) {
          if (index % 4 == 0) {
            return Card(
              color: Colors.red,
                child: Text("advertisement")
            );
          } else {
            return SizedBox();
          }
        },
        itemCount: 12,
      ),
    );
  }
}
