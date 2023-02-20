import 'package:app1/colors.dart';
import 'package:flutter/material.dart';

AppBarTheme appBarThemeLight(BuildContext context) {
  return const AppBarTheme(
      elevation: 0,
      centerTitle: false,
      backgroundColor: bgPrimaryLight,
      iconTheme: IconThemeData(color: bgPrimaryDark));
}

AppBarTheme appBarThemeDark(BuildContext context) {
  return const AppBarTheme(
    elevation: 0,
    centerTitle: false,
    backgroundColor: bgPrimaryDark,
    iconTheme: IconThemeData(color: bgPrimaryLight),
  );
}

ThemeData lightThemeData(BuildContext context) {
  return ThemeData.light().copyWith(
    scaffoldBackgroundColor: bgPrimaryLight,
    appBarTheme: appBarThemeLight(context),
    textTheme: TextTheme(
      bodyMedium: TextStyle(
        color: Color(0xFF000000),
      ),
      titleLarge: TextStyle(color: Colors.black),
    ),
    colorScheme: ColorScheme.light(primary: Colors.black),
    inputDecorationTheme: InputDecorationTheme(),
  );
}

ThemeData darkThemeData(BuildContext context) {
  return ThemeData.light().copyWith(
      scaffoldBackgroundColor: bgPrimaryDark,
      appBarTheme: appBarThemeDark(context),
      textTheme: TextTheme(
        bodyMedium: TextStyle(color: Color(0xFFFFFFFF)),
      ),
      colorScheme: ColorScheme.light(primary: Colors.white),
      inputDecorationTheme: InputDecorationTheme());
}
