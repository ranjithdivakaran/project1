import 'package:flutter/material.dart';
import 'package:project1/statemanagment_using_provider/provider/movieprovider.dart';
import 'package:provider/provider.dart';

class Wishlistpage extends StatelessWidget {
  const Wishlistpage({super.key});

  @override
  Widget build(BuildContext context) {
    var wishmovies=context.watch<Movieprovider>().moviewishlist;
    return Scaffold(
      appBar: AppBar(
        title: Text("Wishlist"),
      ),
      body:ListView.builder(
          itemCount:wishmovies.length,
          itemBuilder: (context,index){
            final wishmovie=wishmovies[index];
        return Card(
          child: ListTile(
            title: Text(wishmovie.titile),
            subtitle: Text(wishmovie.time),
            trailing: TextButton(onPressed: (){
              context.read<Movieprovider>().removetowhishlist(wishmovie);
            }, child: Text("Remove")),
          ),
        );
      }),
    );
  }
}
