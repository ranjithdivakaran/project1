import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

void main() {
  runApp(
    MaterialApp(
      home: Staggrid(),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class Staggrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sraggered Gridview"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: StaggeredGrid.count(
          crossAxisCount: 3,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          children: [
            StaggeredGridTile.count(
              crossAxisCellCount: 1,
              mainAxisCellCount: 2,
              child: Container(
                color: Colors.green,
                child: Center(
                  child: Icon(Icons.account_balance),
                ),
              ),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 2,
              mainAxisCellCount:3,
              child:  Container(
                color: Colors.red,
                child: Center(
                  child: Icon(Icons.account_balance),
                ),
              ),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 1,
              mainAxisCellCount:1,
              child:  Container(
                color: Colors.orange,
                child: Center(
                  child: Icon(Icons.account_balance),
                ),
              ),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 3,
              mainAxisCellCount:2,
              child:  Container(
                color: Colors.blue,
                child: Center(
                  child: Icon(Icons.account_balance),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
