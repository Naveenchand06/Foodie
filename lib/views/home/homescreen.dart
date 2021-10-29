import 'package:flutter/material.dart';
import 'package:foodie/utils/textstyles.dart';
import 'package:foodie/widgets/cards/categories_card.dart';
import 'package:foodie/widgets/cards/food_card.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 5.0),
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
          centerTitle: true,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
          title: Image.asset(
            'images/foodie.png',
            height: 150.0,
          ),
          actions: [
            Container(
              child: IconButton(
                icon: Icon(Icons.person_outline),
                color: Colors.black,
                onPressed: () {},
              ),
            )
          ],
        ),
        body: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Madurai',
                style: kLocationTitle,
              ),
              Container(
                height: 50.0,
                padding: EdgeInsets.only(top: 5.0),
                child: TextField(
                  cursorColor: Colors.grey,
                  cursorHeight: 20.0,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey.shade300,
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.grey.shade800,
                      ),
                      hintText: 'Search food...',
                      contentPadding: EdgeInsets.all(0.0),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide.none,
                      )),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                'Categories',
                style: kCategoriesTitleTextStyle,
              ),
              SizedBox(
                height: 15.0,
              ),
              Container(
                child: Row(
                  children: [
                    CategoriesCard(
                      labelText: 'All',
                      buttonColor: Colors.redAccent,
                      isActive: true,
                    ),
                    CategoriesCard(
                      labelText: 'Cafe',
                      buttonColor: Colors.white,
                      isActive: false,
                    ),
                    CategoriesCard(
                      labelText: 'Biriyani',
                      buttonColor: Colors.white,
                      isActive: false,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Expanded(
                child: Theme(
                  data: Theme.of(context).copyWith(accentColor: Colors.grey.shade400),
                  child: SingleChildScrollView(
                    child: Container(
                      child: Column(
                        children: [
                          FoodCard(
                            dishName: 'Double Twin Burger',
                            foodType: 'American',
                            foodRating: '4.5',
                          ),
                          FoodCard(
                            dishName: 'Machurian Noodles',
                            foodType: 'Chinese',
                            foodRating: '4.6',
                          ),
                          FoodCard(
                            dishName: 'Red Sauce Pasta',
                            foodType: 'American',
                            foodRating: '4.2',
                          ),
                          FoodCard(
                            dishName: 'Butter Chicken Pizza',
                            foodType: 'American',
                            foodRating: '4.4',
                          ),
                          FoodCard(
                            dishName: 'Double Twin Burger',
                            foodType: 'American',
                            foodRating: '4.5',
                          ),
                          FoodCard(
                            dishName: 'Biriyani',
                            foodType: 'Indian',
                            foodRating: '4.8',
                          ),
                          FoodCard(
                            dishName: 'Sushi',
                            foodType: 'japanese',
                            foodRating: '4.4',
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
