import 'package:flutter/material.dart';

ThemeData theme() {
  return ThemeData(
    scaffoldBackgroundColor: Colors.white,
    fontFamily: "Roboto",
    textTheme: textTheme(),
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}

TextTheme textTheme() {
  return TextTheme(
    bodyText1: TextStyle(color: Colors.white),
    bodyText2: TextStyle(color: Colors.black),
  );
}
