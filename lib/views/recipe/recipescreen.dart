import 'package:flutter/material.dart';
import 'package:foodie/models/recipe.dart';
import 'package:foodie/services/yummly_api/recipe_api.dart';
import 'package:foodie/widgets/cards/recipe_card.dart';

class RecipeScreen extends StatefulWidget {
  @override
  _RecipeScreenState createState() => _RecipeScreenState();
}

class _RecipeScreenState extends State<RecipeScreen> {
  List<Recipe> _recipes = [];
  bool isLoading = true;
  @override
  void initState() {
    super.initState();
    getRecipes();
  }

  Future<void> getRecipes() async {
    _recipes = await RecipeApi.getRecipe();
    setState(() {
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    final _kHeight = MediaQuery.of(context).size.height;
    final _kWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.restaurant_menu_rounded,
              color: Colors.black,
            ),
            SizedBox(width: 10),
            Text(
              'Food Recipe',
              style: TextStyle(color: Colors.black),
            ),
          ],
        ),
      ),
      body: Container(
        height: _kHeight,
        width: _kWidth,
        margin: EdgeInsets.symmetric(horizontal: 5.0, vertical: 10.0),
        child: isLoading
            ? CircularProgressIndicator()
            : ListView.builder(
                itemCount: _recipes.length,
                itemBuilder: (context, index) {
                  return RecipeCard(
                    title: _recipes[index].name,
                    rating: _recipes[index].rating.toString(),
                    cookTime: _recipes[index].totalTime,
                    thumbnailUrl: _recipes[index].images,
                  );
                }),
      ),
    );
  }
}
