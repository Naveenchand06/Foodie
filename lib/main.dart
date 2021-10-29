import 'package:flutter/material.dart';
import 'package:foodie/views/home/homescreen.dart';
import 'package:foodie/views/recipe/recipescreen.dart';
import 'package:foodie/widgets/cards/recipe_card.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Foodie',
      home: RecipeScreen(),
    );
  }
}
