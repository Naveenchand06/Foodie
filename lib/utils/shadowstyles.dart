import 'package:flutter/material.dart';

final kCategoriesButtonShadow = [
  BoxShadow(
    color: Colors.grey.withOpacity(0.5),
    blurRadius: 2.0,
    offset: Offset(3.0, 2.0),
  ),
  BoxShadow(
    color: Colors.grey.shade300,
    blurRadius: 2.0,
    offset: Offset(-3.0, -2.0),
  ),
];

final kFoodCardShadow = [
  BoxShadow(
    color: Colors.grey.shade300.withOpacity(0.7),
    blurRadius: 2.0,
    spreadRadius: 1.0,
    offset: Offset(3.0, 2.0),
  ),
  BoxShadow(
    color: Colors.grey.shade300.withOpacity(0.7),
    blurRadius: 2.0,
    spreadRadius: 1.0,
    offset: Offset(-3.0, -2.0),
  ),
];

final kDetailCardShadow = [
  BoxShadow(
    color: Colors.grey,
    blurRadius: 2.0,
    spreadRadius: 1.0,
    offset: Offset(2.0, 2.0),
  ),
  BoxShadow(
    color: Colors.grey,
    blurRadius: 2.0,
    spreadRadius: 1.0,
    offset: Offset(-2.0, -2.0),
  ),
];
