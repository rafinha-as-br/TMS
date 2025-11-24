import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// this file contains the tokens for the buttons sizing
enum ButtonSize{large, medium, small}

abstract class TokensButtonSize{
  // height -> Used for icon
  static const double largeHeight = 35;
  static const double mediumHeight = 25;
  static const double smallHeight = 17;


  // padding
  static const EdgeInsets largePadding =
    EdgeInsets.symmetric(horizontal: 9, vertical: 9);
  static const EdgeInsets mediumPadding =
    EdgeInsets.symmetric(horizontal: 6, vertical: 6);
  static const EdgeInsets smallPadding =
    EdgeInsets.symmetric(horizontal: 3, vertical: 4.5);

  // text style
  static TextStyle largeTextStyle(BuildContext context) =>
      Theme.of(context).textTheme.titleLarge!;

  static TextStyle mediumTextStyle(BuildContext context) =>
      Theme.of(context).textTheme.bodyLarge!;

  static TextStyle smallTextStyle(BuildContext context) =>
      Theme.of(context).textTheme.labelLarge!;

}

