import 'package:flutter/material.dart';

const primaryColor = Color(0xFF4E7FE8);
const secondaryColor = Color(0xFF829fde);

TextStyle stepper = TextStyle(
  color: Colors.black,
  fontSize: 24,
  fontWeight: FontWeight.normal,
);

TextStyle titleWhite = TextStyle(
  color: Colors.white,
  fontSize: 19,
  fontWeight: FontWeight.bold,
);

TextStyle bodyBlack = TextStyle(
  color: Colors.black,
  fontSize: 16,
  fontWeight: FontWeight.normal,
);

TextStyle bodyWhite = TextStyle(
  color: Colors.grey.shade300,
  fontSize: 16,
  fontWeight: FontWeight.normal,
);

TextStyle buttonText = TextStyle(
  color: Colors.white,
  fontSize: 17,
  fontWeight: FontWeight.bold,
);

// Form Error
final RegExp emailValidatorRegExp =
    RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const String emailEmptyErrorText = "Please enter your email";
const String invalidEmailErrorText = "Please enter valid email";
