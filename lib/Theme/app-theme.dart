import 'package:flutter/material.dart';
import 'package:session8_islame/Commen/app_color.dart';

import '../Commen/app_const.dart';

class AppTheme {
  static ThemeData appTheme = ThemeData(
    scaffoldBackgroundColor: AppColors.blackColor,
    appBarTheme: AppBarTheme(
      color: AppColors.goldColor,
      centerTitle: true,
      iconTheme: IconThemeData(color: AppColors.goldColor, size: 22),
      titleTextStyle: TextStyle(
        fontSize: 20,
        color: AppColors.goldColor,
        fontWeight: FontWeight.bold,
      ),
    ),
    colorScheme: ColorScheme.fromSeed(
      seedColor: AppColors.blackColor,
      primary: AppColors.blackColor,
      secondary: AppColors.goldColor,
    ),
    useMaterial3: true,

    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      backgroundColor: AppColors.goldColor,
      showSelectedLabels: true,
      showUnselectedLabels: false,
      selectedLabelStyle: TextStyle(
        fontFamily: AppConsts.fontFamily,
        fontSize: 12,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
      selectedItemColor: Colors.white,
      selectedIconTheme: IconThemeData(color: Colors.white),
      unselectedIconTheme: IconThemeData(color: AppColors.blackColor),
    ),
  );
}
