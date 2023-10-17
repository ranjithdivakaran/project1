import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project1/statemanagment_using_provider/provider/movieprovider.dart';
import 'package:project1/statemanagment_using_provider/screens/whishlistpage.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider<Movieprovider>(
      create: (BuildContext context) => Movieprovider(),
      child: MaterialApp(
        home: Moviemain(),
        debugShowCheckedModeBanner: false,
      ),
    ),
  );
}

class Moviemain extends StatelessWidget {
  const Moviemain({super.key});

  @override
  Widget build(BuildContext context) {
    var wishmovies = context.watch<Movieprovider>().moviewishlist;
    var movies = context.watch<Movieprovider>().movies;
    return Scaffold(
      appBar: AppBar(
        title: Text("Movies"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          ElevatedButton.icon(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => Wishlistpage()));
              },
              icon: Icon(Icons.favorite_border),
              label: Text("Go to Whishlist ${wishmovies.length}")),
          Expanded(
              child: ListView.builder(
                  itemCount: movies.length,
                  itemBuilder: (context, index) {
                    final currentmovie = movies[index];
                    return Card(
                      child: ListTile(
                        title: Text(currentmovie.titile),
                        subtitle: Text(currentmovie.time),
                        trailing: IconButton(
                          onPressed: () {
                            if (!wishmovies.contains(currentmovie)) {
                              context
                                  .read<Movieprovider>()
                                  .addtowhishlist(currentmovie);
                            } else {
                              context
                                  .read<Movieprovider>()
                                  .removetowhishlist(currentmovie);
                            }
                          },
                          icon: Icon(
                            Icons.favorite,
                            color: wishmovies.contains(currentmovie)
                                ? Colors.red
                                : Colors.blueGrey,
                          ),
                        ),
                      ),
                    );
                  }))
        ],
      ),
    );
  }
}
