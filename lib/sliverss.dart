import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Sliverss(),
  ));
}

class Sliverss extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              floating: true,
              pinned: false,
              title: Text("Sliver appbar"),
              bottom: AppBar(
                elevation: 0,
                title: Container(
                  width: double.infinity,
                  height: 40,
                  color: Colors.white,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "search here",
                      prefixIcon: Icon(Icons.search),
                      suffixIcon: Icon(Icons.camera_alt),
                    ),
                  ),
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                  (context, index) => Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Text("data $index"),
                        height: 80,
                      ),
                  childCount: 10),
            ),
            SliverGrid(
              delegate: SliverChildBuilderDelegate((context, index) => Card(
                child: Center(
                  child: Icon(Icons.account_balance),
                ),
              ),),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            ),
          ],
        ),
      ),
    );
  }
}
