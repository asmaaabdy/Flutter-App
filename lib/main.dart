// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:grocery_app/screens/exports.dart';

void main() {
  runApp(GroceryApp());
}

class GroceryApp extends StatelessWidget {
  const GroceryApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Grocery Application',
      home: WelcomeScreen(), //HomeScreen(),
    );
  }
}
