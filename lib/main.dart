// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  //Rogann_he on Instagram_uu
  //BineCoder on Github

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Watches',
      debugShowCheckedModeBanner: false,
      home: HomePage(), 
    );
  }
}
