import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Refractorhome(),
  ));
}

class Refractorhome extends StatelessWidget {
  var names = ["hello", "hii", "haii", "heyy", "aaa"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("grid view using refactoring"),
      ),
      body: GridView.builder(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (context, index) {
          return Mywidget(
            myimage: AssetImage("assets/images/background.jpg"),
            name:names[index],
          );
        },
        itemCount: 5,
      ),
    );
  }
}

class Mywidget extends StatelessWidget {
  ImageProvider myimage;
  String name;

  // String? price;
  Mywidget({
    super.key,
    required this.myimage,
    required this.name, // this.price
  });



  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(image: myimage),
          Text(name),
          // Text(price!),
          // Icon(Icons.account_balance),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {},
                child: Text("ok"),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text("cancel"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
