import 'package:flutter/material.dart';

class Statefullpage extends StatefulWidget {
  final String name;
  final String location;
  int? phone;
   Statefullpage({super.key,required this.name,required this.location,this.phone});

  @override
  State<Statefullpage> createState() => _StatefullpageState();
}

class _StatefullpageState extends State<Statefullpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(widget.name),
              Text(widget.location),
              Text("${widget.phone}")
            ],
          ),
        ),
      ),
    );
  }
}
