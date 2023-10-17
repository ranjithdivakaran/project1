import 'dart:math';
import 'package:flutter/material.dart';
import 'package:project1/statemanagment_using_provider/model/movies.dart';

final List<Movies> movielist = List.generate(
    100,
    (index) =>
        Movies(titile: "movie $index", time: "${Random().nextInt(100) + 60}"));

class Movieprovider extends ChangeNotifier {
  final List<Movies> _movie = movielist;
  List<Movies> get movies => _movie;

  final List<Movies> _wishlistmovie = [];
  List<Movies> get moviewishlist => _wishlistmovie;

  void addtowhishlist(Movies movieFromMainpage) {
    _wishlistmovie.add(movieFromMainpage);
    notifyListeners();
  }

  void removetowhishlist(Movies removedmovie) {
    _wishlistmovie.remove(removedmovie);
    notifyListeners();
  }
}
