import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Gridviewcustom(),
  ));
}

class Gridviewcustom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GridView Custom"),
      ),
      body: GridView.custom(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        childrenDelegate: SliverChildListDelegate(
          List.generate(
            10,
            (index) => Center(
              child: Column(
                children: [
                  Container(height: 100,width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      image: DecorationImage(
                        image: AssetImage("assets/images/background.jpg"),
                      ),
                    ),
                  ),
                  Text("item 1"),
                  
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
