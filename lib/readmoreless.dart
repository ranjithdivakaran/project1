import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
void main(){
  runApp(MaterialApp(home: Readmoreless(),));
}
class Readmoreless extends StatelessWidget {
  const Readmoreless({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Read more"),
      ),
      body: Column(
        children: [
          ReadMoreText("dataaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          trimLines:2,
            preDataText:"AMANDA",
            preDataTextStyle: TextStyle(fontWeight: FontWeight.w600),
            style: TextStyle(color: Colors.blue),
            colorClickableText: Colors.cyanAccent,
            trimMode: TrimMode.Line,
            // trimCollapsedText: "....read",
            // trimExpandedText: "less",
          )
        ],
      ),
    );
  }
}
