import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:design_system/design_system.dart';


void main() async{
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: routeCraftLightTheme,
      darkTheme: routeCraftDarkTheme,
      themeMode: ThemeMode.light,
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(17.0),
          child: SizedBox.expand(
            child: BackgroundCard(),
          )
        )
      ),
    );
  }
}
