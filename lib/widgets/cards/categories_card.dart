import 'package:flutter/material.dart';
import 'package:foodie/utils/shadowstyles.dart';
import 'package:foodie/utils/textstyles.dart';

class CategoriesCard extends StatelessWidget {
  var labelText;
  var buttonColor;
  var isActive;

  CategoriesCard({@required labelText, @required buttonColor, @required isActive}) {
    this.labelText = labelText;
    this.buttonColor = buttonColor;
    this.isActive = isActive;
  }

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        margin: EdgeInsets.only(right: 10.0),
        padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0),
        decoration: BoxDecoration(
          color: buttonColor,
          borderRadius: BorderRadius.circular(40.0),
          boxShadow: kCategoriesButtonShadow,
        ),
        child: Text(
          labelText,
          style: isActive ? kCategoriesActiveTextStyle : kCategoriesInactiveTextStyle,
        ),
      ),
    );
  }
}
