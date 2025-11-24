import 'package:design_system/tokens/token_theme_colors.dart';
import 'package:flutter/material.dart';

/// this is the RouteCraft dark theme file,
/// it contains everything related to dark theme colors
final ThemeData routeCraftDarkTheme = ThemeData(
  brightness: Brightness.dark,
  useMaterial3: true,

  // dark color scheme
  colorScheme: ColorScheme(
    brightness: Brightness.dark,
    primary: RouteCraftColors.darkPrimaryBackgroundColor,
    onPrimary: Colors.white,

    primaryContainer: RouteCraftColors.darkPrimaryBackgroundColor,
    onPrimaryContainer: Colors.white,

    secondary: RouteCraftColors.darkSecondaryElementsColor,
    onSecondary: Colors.white,

    secondaryContainer: RouteCraftColors.darkSecondaryBackgroundColor,
    onSecondaryContainer: Colors.white,

    tertiary: RouteCraftColors.darkNeutralElementsColor,
    onTertiary: Colors.white,

    tertiaryContainer: RouteCraftColors.darkNeutralBackgroundColor,
    onTertiaryContainer: Colors.white,

    surface: RouteCraftColors.darkNeutralBackgroundColor,
    onSurface: RouteCraftColors.darkTextTitleColor,

    surfaceContainerHighest: RouteCraftColors.darkNeutralElementsColor,
    onSurfaceVariant: RouteCraftColors.darkTextSubtitleColor,

    error: Colors.red.shade400,
    onError: Colors.black,
    errorContainer: Colors.red.shade900,
    onErrorContainer: Colors.white,

    outline: RouteCraftColors.darkNeutralSubElementsColor,
    shadow: Colors.black45,
    scrim: Colors.black87,

    inverseSurface: Colors.white,
    onInverseSurface: Colors.black,
    inversePrimary: RouteCraftColors.darkPrimaryBackgroundColor,
  ),

  // typography
    textTheme: const TextTheme(
      headlineLarge: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
      headlineMedium: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
      headlineSmall: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),

      titleLarge: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
      titleMedium: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
      titleSmall: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),

      bodyLarge: TextStyle(fontSize: 14),
      bodyMedium: TextStyle(fontSize: 12),
      bodySmall: TextStyle(fontSize: 10),

      labelLarge: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
      labelMedium: TextStyle(fontSize: 10),
      labelSmall: TextStyle(fontSize: 8),
    ),

  //buttons
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: RouteCraftColors.darkPrimaryElementsColor,
      foregroundColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
    ),
  ),
  outlinedButtonTheme: OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      foregroundColor: RouteCraftColors.lightPrimaryElementsColor,
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
    filled: true,
    fillColor: RouteCraftColors.darkNeutralSurfaceColor,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(color: RouteCraftColors.darkNeutralElementsColor),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: RouteCraftColors.darkPrimaryBackgroundColor),
      borderRadius: BorderRadius.circular(12),
    ),
    labelStyle: TextStyle(color: RouteCraftColors.darkTextSubtitleColor),
  ),

  // cads
  cardTheme: CardThemeData(
    color: RouteCraftColors.darkNeutralSurfaceColor,
    elevation: 6,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(17),
    ),
  )

);