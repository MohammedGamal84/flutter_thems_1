import 'package:flutter/material.dart';
import 'package:flutter_thems_1/app_color.dart';

class AppTheme {
  static final ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: AppColors.backgroundColor,
    useMaterial3: true,
    fontFamily: 'Roboto',

    appBarTheme: AppBarTheme(
      backgroundColor: const Color(0xFFFFD54F), 
      elevation: 0, 
      centerTitle: false,
      iconTheme: const IconThemeData(color: Colors.black), 
      titleTextStyle: const TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
      toolbarHeight: 120, 
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(30),
        ),
      ),
    ),
  );
}
