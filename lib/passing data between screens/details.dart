import 'package:flutter/material.dart';
import 'package:project1/passing%20data%20between%20screens/dummy%20file.dart';

class Productdetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final productid = ModalRoute.of(context)?.settings.arguments; //to select values from previous page/route
    final productfromlist = products.firstWhere((element) => element["id"] == productid); //fetch all the values corresponding to the list which satisfy the condition
    return Scaffold(
      appBar: AppBar(
        title: Text("details"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 200,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(image: NetworkImage(productfromlist["image"]))
            ),
          ),
          Text(productfromlist["name"]),
          Text(productfromlist["description"]),
          Text("\$ ${productfromlist["price"]}"),
          Text("${productfromlist["rating"]}"),
        ],
      ),
    );
  }
}
