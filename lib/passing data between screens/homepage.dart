

import 'package:flutter/material.dart';
import 'package:project1/passing%20data%20between%20screens/dummy%20file.dart';

import 'details.dart';

void main() {
  runApp(MaterialApp(
    home: Producthome(),
    routes: {
      "details":(context)=>Productdetails()
    },
  ));
}

class Producthome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("shopping"),
      ),
      body: ListView(
        children: products.map((e) =>
            Card(
              child: ListTile(
                leading: Image.network(e["image"]),
                title: Text(e["name"]),
                subtitle: Text("\$ ${e["price"]}"),
                onTap: () {
                  gotonextpage(context, e["id"]);
                },
              ),
            )).toList(),
      ),
    );
  }

  void gotonextpage(BuildContext context, productId) {
    Navigator.pushNamed(context, "details",arguments: productId);

  }
}
