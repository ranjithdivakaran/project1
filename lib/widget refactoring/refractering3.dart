import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Refractering(),
  ));
}

class Refractering extends StatelessWidget {
  const Refractering({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Refractering"),
        ),
        body: GridView.builder(
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            itemBuilder: (context, index) {
              return Myrefracteringwidget(
                myimage: Image.asset("assets/images/background.jpg"),
                label: Text("hii"),
                bgcolor: Colors.blue,
              );
            }));
  }
}

class Myrefracteringwidget extends StatelessWidget {
  final Color? bgcolor;
  final Image? myimage;
  VoidCallback? onclick;
  Widget? label;
  Widget? ricon;

  Myrefracteringwidget(
      {this.bgcolor,
      required this.myimage,
      this.onclick,
      this.label,
      this.ricon});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: bgcolor,
      child: Center(
        child: ListTile(
          title: label,
          leading: myimage,
          onTap: onclick,
          trailing: ricon,
        ),
      ),
    );
  }
}
