import 'package:design_system/themes/theme_colors.dart';
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
    headlineLarge: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
    headlineMedium: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
    headlineSmall: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),

    titleLarge: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
    titleMedium: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
    titleSmall: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),

    bodyLarge: TextStyle(fontSize: 16),
    bodyMedium: TextStyle(fontSize: 14),
    bodySmall: TextStyle(fontSize: 12),

    labelLarge: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
    labelMedium: TextStyle(fontSize: 12),
    labelSmall: TextStyle(fontSize: 10),
  ),

  // buttons
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: RouteCraftColors.lightPrimaryElementsColor,
      foregroundColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
    ),
  ),

  // inputs
  inputDecorationTheme: InputDecorationTheme(
    filled: true,
    fillColor: RouteCraftColors.lightNeutralSurfaceColor,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(color: RouteCraftColors.lightNeutralElementsColor),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: RouteCraftColors.lightPrimaryElementsColor),
      borderRadius: BorderRadius.circular(12),
    ),
    labelStyle: TextStyle(color: RouteCraftColors.lightTextSubtitleColor),
  ),

  // cards
  cardTheme: CardThemeData(
    color: RouteCraftColors.lightNeutralSurfaceColor,
    elevation: 2,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(16),
    ),
  ),
);
