import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle fontMontserrat({weight = FontWeight.w400, color = Colors.black, size = 18.0}) {
  return GoogleFonts.montserrat(
    fontWeight: weight,
    fontSize: size,
    color: color,
  );
}

// HomeScreen
final kLocationTitle = fontMontserrat(
  weight: FontWeight.w600,
  size: 20.0,
);

final kCategoriesTitleTextStyle = fontMontserrat(
  weight: FontWeight.w500,
  size: 18.0,
);

final kFoodCardDishName = fontMontserrat(
  weight: FontWeight.w600,
  size: 17.0,
);

final kFoodCardFoodType = fontMontserrat(
  weight: FontWeight.w400,
  size: 14.0,
);

final kCategoriesActiveTextStyle = fontMontserrat(
  color: Colors.white,
  weight: FontWeight.w400,
  size: 17.0,
);

final kCategoriesInactiveTextStyle = fontMontserrat(
  color: Colors.black,
  weight: FontWeight.w400,
  size: 17.0,
);

// LocationDetail Screen

final kDetailCardTitle = fontMontserrat(
  weight: FontWeight.w500,
  size: 18.0,
);

final kDetailCardSubTitle = fontMontserrat(
  size: 15.0,
  color: Colors.grey.shade700,
);

final kDetailCardAddressStyle = fontMontserrat(
  size: 15.0,
  color: Colors.blue,
);

final kDetailCardRatingStyle = fontMontserrat(
  size: 15.0,
  color: Colors.blue,
);

final kDetailCardTimingandPhoneStyle = fontMontserrat(
  size: 15.0,
  color: Colors.black,
);
