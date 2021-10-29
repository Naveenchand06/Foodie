import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodie/utils/shadowstyles.dart';
import 'package:foodie/utils/textstyles.dart';
import 'package:foodie/views/locationdetail/locationdetail.dart';
import 'package:foodie/views/recipe/recipescreen.dart';

class FoodCard extends StatelessWidget {
  final dishName;
  final foodType;
  final foodRating;

  FoodCard({
    @required this.dishName,
    @required this.foodType,
    @required this.foodRating,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => RecipeScreen()));
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20.0),
          boxShadow: kFoodCardShadow,
        ),
        child: Row(
          children: [
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: 10.0,
                vertical: 10.0,
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Image.asset(
                  'images/food3.png',
                  fit: BoxFit.fill,
                  height: 110.0,
                  width: 110.0,
                ),
              ),
            ),
            Flexible(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      dishName,
                      textAlign: TextAlign.left,
                      style: kFoodCardDishName,
                    ),
                    SizedBox(
                      height: 3.0,
                    ),
                    Text(
                      foodType,
                      style: kFoodCardFoodType,
                    ),
                    SizedBox(
                      height: 3.0,
                    ),
                    Row(
                      children: [
                        Text(foodRating, style: kFoodCardFoodType),
                        SizedBox(
                          width: 2.0,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.amber,
                        )
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}






// Old version of Food Card


// Container(
//         margin: EdgeInsets.symmetric(horizontal: 8.0, vertical: 5.0),
//         // padding: EdgeInsets.symmetric(horizontal: 0.0, vertical: 0.0),
//         decoration: BoxDecoration(
//           color: Colors.white,
//           borderRadius: BorderRadius.circular(10.0),
//           boxShadow: [
//             BoxShadow(
//               color: Colors.grey,
//               blurRadius: 2.0,
//               offset: Offset(-1.0, 1.0),
//             ),
//           ],
//         ),
//         child: Container(
//           child: Row(
//             children: [
//               ClipRRect(
//                 borderRadius: BorderRadius.circular(10.0),
//                 child: Image.asset(
//                   'images/food3.png',
//                   height: 87.0,
//                   width: 60,
//                   fit: BoxFit.fitHeight,
//                 ),
//               ),
//               Flexible(
//                 child: Container(
//                   padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         dishName,
//                         style: GoogleFonts.montserrat(
//                           fontWeight: FontWeight.w600,
//                           fontSize: 17.0,
//                         ),
//                       ),
//                       SizedBox(
//                         height: 3.0,
//                       ),
//                       Text(
//                         foodType,
//                         style: GoogleFonts.montserrat(
//                           fontWeight: FontWeight.w400,
//                           fontSize: 14.0,
//                         ),
//                       ),
//                       SizedBox(
//                         height: 3.0,
//                       ),
//                       Row(
//                         children: [
//                           Text(
//                             foodRating,
//                             style: GoogleFonts.montserrat(
//                               fontWeight: FontWeight.w400,
//                               fontSize: 14.0,
//                             ),
//                           ),
//                           SizedBox(
//                             width: 2.0,
//                           ),
//                           Icon(
//                             Icons.star,
//                             color: Colors.amber,
//                           )
//                         ],
//                       ),
//                     ],
//                   ),
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),