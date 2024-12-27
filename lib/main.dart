import 'package:flutter/material.dart';
import 'package:sebha_screen/design_system/my_theme.dart';
import 'package:sebha_screen/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
      darkTheme: MyTheme.darkTheme,
      themeMode: ThemeMode.dark,
    );
  }
}
