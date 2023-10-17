import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Listview2(),
  ));
}

class Listview2 extends StatelessWidget {
  var name = [
    "name 1",
    "name 2",
    "name 3",
    "name 4",
    "name 5",
  ];
  var image = [
    "assets/images/background.jpg",
    "assets/images/background.jpg",
    "assets/images/background.jpg",
    "assets/images/background.jpg",
    "assets/images/background.jpg",
  ];
  var price = [
    100,
    200,
    300,
    400,
    500,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        actions: [
          Icon(Icons.camera_alt),
          SizedBox(width: 20),
          Icon(Icons.search),
          SizedBox(width: 5),
          PopupMenuButton(itemBuilder: (context) {
            return [
              PopupMenuItem(
                child: Text("New Group"),
              ),
              PopupMenuItem(
                child: Text("settings"),
              ),
              PopupMenuItem(
                child: Text("About"),
              ),
              PopupMenuItem(
                child: Text("Help"),
              ),
            ];
          }),
        ],
        title: Text("ListView"),
      ),
      body: ListView(
        children: List.generate(
          5,
          (index) => Card(
            child: ListTile(
              title: Text(name[index]),
              subtitle: Text("\$ ${price[index]}"),
              leading: CircleAvatar(
                backgroundImage: AssetImage(image[index]),
              ),
              trailing: Wrap(
                direction: Axis.vertical,
                children: [
                  // Icon(Icons.shopping_cart),
                  // Icon(Icons.favorite_border),
                  Text("1:20"),
                  SizedBox(
                    width: 15,
                  ),
                  CircleAvatar(
                    minRadius: 8,
                    maxRadius: 10,
                    backgroundColor: Colors.green,
                    child: Text("2"),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
