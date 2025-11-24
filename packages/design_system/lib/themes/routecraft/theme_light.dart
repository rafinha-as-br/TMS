import 'package:design_system/tokens/token_theme_colors.dart';
import 'package:flutter/material.dart';

/// this is the RouteCraft light theme file,
/// it contains everything related to light theme colors
final ThemeData routeCraftLightTheme = ThemeData(
  brightness: Brightness.light,
  useMaterial3: true,

  // light color scheme
  colorScheme: ColorScheme(
    brightness: Brightness.light,

    primary: RouteCraftColors.lightPrimaryElementsColor,
    onPrimary: Colors.white,

    primaryContainer: RouteCraftColors.lightPrimaryBackgroundColor,
    onPrimaryContainer: Colors.black,

    secondary: RouteCraftColors.lightSecondaryElementsColor,
    onSecondary: Colors.black,

    secondaryContainer: RouteCraftColors.lightSecondaryBackgroundColor,
    onSecondaryContainer: Colors.black,

    tertiary: RouteCraftColors.lightNeutralElementsColor,
    onTertiary: Colors.black,

    tertiaryContainer: RouteCraftColors.lightNeutralBackgroundColor,
    onTertiaryContainer: Colors.black,

    surface: RouteCraftColors.lightNeutralSurfaceColor,
    onSurface: RouteCraftColors.lightTextTitleColor,

    surfaceContainerHighest: RouteCraftColors.lightNeutralElementsColor,
    onSurfaceVariant: RouteCraftColors.lightTextSubtitleColor,

    error: Colors.red.shade700,
    onError: Colors.white,
    errorContainer: Colors.red.shade100,
    onErrorContainer: Colors.black,

    outline: RouteCraftColors.lightNeutralSubElementsColor,
    shadow: Colors.black12,
    scrim: Colors.black26,

    inverseSurface: Colors.black,
    onInverseSurface: Colors.white,
    inversePrimary: RouteCraftColors.lightPrimaryBackgroundColor,
  ),
 
  // typography
  textTheme: const TextTheme(
    headlineLarge: TextStyle(color: Colors.white,fontSize: 30, fontWeight: FontWeight.bold),
    headlineMedium: TextStyle(color: Colors.white,fontSize: 26, fontWeight: FontWeight.bold),
    headlineSmall: TextStyle(color: Colors.white,fontSize: 22, fontWeight: FontWeight.bold),

    titleLarge: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w600),
    titleMedium: TextStyle(color: Colors.white,fontSize: 16, fontWeight: FontWeight.w600),
    titleSmall: TextStyle(color: Colors.white,fontSize: 14, fontWeight: FontWeight.w500),

    bodyLarge: TextStyle(color: Colors.white,fontSize: 14),
    bodyMedium: TextStyle(color: Colors.white,fontSize: 12),
    bodySmall: TextStyle(color: Colors.white,fontSize: 10),

    labelLarge: TextStyle(color: Colors.white,fontSize: 12, fontWeight: FontWeight.w600),
    labelMedium: TextStyle(color: Colors.white,fontSize: 10),
    labelSmall: TextStyle(color: Colors.white,fontSize: 8),
  ),

  // buttons
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: RouteCraftColors.lightPrimaryElementsColor,
      foregroundColor: Colors.white,
      elevation: 7,
      shadowColor: RouteCraftColors.lightPrimarySubElementsColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
    ),
  ),
  outlinedButtonTheme: OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      foregroundColor: RouteCraftColors.lightPrimaryElementsColor,
      shadowColor: RouteCraftColors.lightPrimarySubElementsColor,
      side: BorderSide(
        color: RouteCraftColors.lightPrimaryElementsColor,
        width: 1,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
    ),
  ),

  // inputs
  inputDecorationTheme: InputDecorationTheme(
    filled: false,
    fillColor: RouteCraftColors.lightNeutralSurfaceColor,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(color: RouteCraftColors.lightSecondaryElementsColor),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: RouteCraftColors.lightPrimaryElementsColor),
      borderRadius: BorderRadius.circular(12),
    ),
    labelStyle: TextStyle(color: RouteCraftColors.lightTextSubtitleColor),
  ),

  // cards
  cardTheme: CardThemeData(
    color: RouteCraftColors.lightNeutralBackgroundColor,
    elevation: 2,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(16),
    ),
  ),
);
