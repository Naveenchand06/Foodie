import 'dart:convert';
import 'package:foodie/models/recipe.dart';
import 'package:http/http.dart' as http;

class RecipeApi {
  static Future<List<Recipe>> getRecipe() async {
    var uri =
        Uri.https('yummly2.p.rapidapi.com', '/feeds/list', {'limit': '18', 'start': '0', 'tag': 'list.recipe.popular'});

    final response = await http.get(uri, headers: {
      'x-rapidapi-host': 'yummly2.p.rapidapi.com',
      'x-rapidapi-key': 'bc19e0da7dmsh1ca5d4a915d093bp1a9961jsn8f3493ad8cf7',
      'useQueryString': 'true',
    });

    Map data = jsonDecode(response.body);
    List _temp = [];
    for (var i in data['feed']) {
      _temp.add(i['content']['details']);
    }

    return Recipe.recipesFromSnapshot(_temp);
  }
}
