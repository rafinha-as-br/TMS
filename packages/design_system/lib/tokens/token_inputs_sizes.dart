import 'package:flutter/material.dart';

enum InputSize{large, medium, small}

/// this file contains tokens for the inputs
abstract class TokenInputSize{
  // height
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

  // text
  static TextStyle largeTextStyle(BuildContext context) =>
      Theme.of(context).textTheme.titleLarge!;

  static TextStyle mediumTextStyle(BuildContext context) =>
      Theme.of(context).textTheme.bodyLarge!;

  static TextStyle smallTextStyle(BuildContext context) =>
      Theme.of(context).textTheme.labelLarge!;



}


