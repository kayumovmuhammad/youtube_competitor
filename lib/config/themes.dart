import 'package:flutter/material.dart';

var themeDataDark = ThemeData(
  scaffoldBackgroundColor: Colors.black,
  textTheme: TextTheme(
    labelMedium: TextStyle(color: Colors.white, fontSize: 20),
    titleMedium: TextStyle(
      color: Colors.white,
      fontSize: 20,
      fontWeight: FontWeight.w400,
    ),
    labelSmall: TextStyle(color: Colors.white, fontSize: 13),
  ),
  appBarTheme: AppBarTheme(backgroundColor: Colors.black),
  listTileTheme: ListTileThemeData(
    titleTextStyle: TextStyle(color: Colors.white, fontSize: 20),
  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: Colors.black,
    selectedItemColor: Colors.blueAccent,
    unselectedItemColor: Colors.white,
  ),
);

var themeDataLight = ThemeData(
  scaffoldBackgroundColor: Colors.white,
  textTheme: TextTheme(
    labelMedium: TextStyle(color: Colors.black, fontSize: 20),
    titleMedium: TextStyle(
      color: Colors.black,
      fontSize: 20,
      fontWeight: FontWeight.w400,
    ),
    labelSmall: TextStyle(color: Colors.black, fontSize: 13),
  ),
  appBarTheme: AppBarTheme(backgroundColor: Colors.white),
  listTileTheme: ListTileThemeData(
    titleTextStyle: TextStyle(color: Colors.black, fontSize: 20),
  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: Colors.white,
    selectedItemColor: Colors.blueAccent,
    unselectedItemColor: Colors.black,
  ),
  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(
      iconColor: Colors.black,
    ),
  )
);
