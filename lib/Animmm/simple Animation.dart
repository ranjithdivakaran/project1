import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Simpleanimation(),));
}

class Simpleanimation extends StatefulWidget {
  const Simpleanimation({super.key});

  @override
  State<Simpleanimation> createState() => _SimpleanimationState();
}

class _SimpleanimationState extends State<Simpleanimation> with SingleTickerProviderStateMixin{
  Animation<double>? animation;
  AnimationController? animationController;
  @override
  void initState() {
    animationController=AnimationController(vsync: this,duration: Duration(seconds: 1),);
    animation=Tween<double>(begin: 12.0,end: 100.0).animate(animationController!)..addListener(() {
      setState(() {

      });
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animation"),
      ),
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.all(20),
            child: Text("Hello",
              style: TextStyle(fontSize: animation?.value),
            ),
          ),
          ElevatedButton(onPressed: (){
            zoomin();
          }, child: Text("increase text size"))
        ],
      ),
    );
  }

  void zoomin() {
    animationController!.forward();
  }
}
