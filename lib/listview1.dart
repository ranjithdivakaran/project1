import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    home: Listview(),
  ));
}

class Listview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListView"),
      ),
      body: ListView(
        children: [
          Center(
              child: Text(
            "shop Here",
            style: GoogleFonts.kanit(fontSize: 30, color: Colors.blue),
          )),
          Card(
            child: ListTile(
              title: Text("shoe"),
              subtitle: Text("\$ 800"),
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://images.unsplash.com/photo-1542291026-7eec264c27ff?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8c2hvZXN8ZW58MHx8MHx8fDA%3D&w=1000&q=80"),
              ),
              trailing: Icon(Icons.shopping_cart),
            ),
          ),
          Card(
            child: ListTile(
              title: Text("glass"),
              subtitle: Text("\$300"),
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRNw7WNxzk-h3rTPJwsAxlJHgutSLa0BYLQJQ&usqp=CAU"),
              ),
              trailing: Icon(Icons.shopping_cart),
            ),
          ),
          Card(
            child: ListTile(
              title: Text("item3"),
              subtitle: Text("\$2000"),
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://images.unsplash.com/photo-1524592094714-0f0654e20314?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8d2F0Y2h8ZW58MHx8MHx8fDA%3D&w=1000&q=80"),
              ),
              trailing: Icon(Icons.shopping_cart),
            ),
          ),
        ],
      ),
    );
  }
}
