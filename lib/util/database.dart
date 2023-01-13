import 'package:flutter/material.dart';

class Smart {
  final String name;
  final String image;
  final String prix;

  Smart({required this.name, required this.image, required this.prix});
}

List<Smart> mostPopular = [
  Smart(name: "Apple", image: "images/watch2.png", prix: "\$ 454"),
  Smart(name: "Rolex", image: "images/rolex2.webp", prix: "\$ 454"),
];

List<Smart> newrelease = [
  Smart(name: "Apple Watch", image: "images/watch2.png", prix: "\$ 454"),
  Smart(name: "Apple Watch", image: "images/watch2.png", prix: "\$ 454"),
];
