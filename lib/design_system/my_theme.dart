import 'package:flutter/material.dart';
import 'package:sebha_screen/design_system/app_colors.dart';

class MyTheme {
  static final ThemeData darkTheme = ThemeData(
      scaffoldBackgroundColor: Colors.transparent,
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedItemColor: AppColors.whitecolor,
        unselectedItemColor: AppColors.black,
        showSelectedLabels: true,
      ));
}
