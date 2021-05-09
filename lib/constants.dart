import 'package:flutter/material.dart';

const primaryColor = Color(0xFF4E7FE8);
const secondaryColor = Color(0xFF829fde);
const successColor = Color(0xFFa4ca67);

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

TextStyle infoDanger = TextStyle(
  color: Colors.red.shade900,
  fontSize: 16,
  fontWeight: FontWeight.normal,
);

TextStyle infoWarning = TextStyle(
  color: Colors.yellow.shade700,
  fontSize: 16,
  fontWeight: FontWeight.normal,
);

TextStyle infoSuccess = TextStyle(
  color: successColor,
  fontSize: 16,
  fontWeight: FontWeight.normal,
);

TextStyle complexityTitle = TextStyle(
  color: Colors.white,
  fontSize: 34,
  fontWeight: FontWeight.normal,
);

TextStyle complexityInfo = TextStyle(
  color: Colors.white,
  fontSize: 12,
  fontWeight: FontWeight.normal,
);

// Form Error
final RegExp emailValidatorRegExp = RegExp(
  r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+",
);

const String emailEmptyErrorText = "Please enter your email";
const String invalidEmailErrorText = "Please enter valid email";
const String passwordEmptyErrorText = "Please enter your password";
const String passwordLowercaseMissed = "Add lowercaset to your password";
const String passwordUppercaseMissed = "Add uppercase to your password";
const String passwordNumberMissed = "Add number to your password";
const String passwordLessAtLength = "Your password is too short";
