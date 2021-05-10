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

TextStyle bodyDanger = TextStyle(
  color: Colors.red.shade900,
  fontSize: 16,
  fontWeight: FontWeight.normal,
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

TextStyle labelInfo = TextStyle(
  color: Colors.grey,
  fontSize: 12,
  fontWeight: FontWeight.normal,
);

TextStyle labelDanger = TextStyle(
  color: Colors.red.shade900,
  fontSize: 12,
  fontWeight: FontWeight.normal,
);

// Form Error
final RegExp emailValidatorRegExp = RegExp(
  r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+",
);
final RegExp lowercaseValidationRegExp = RegExp("(?=.*[a-z])");
final RegExp uppercaseValidationRegExp = RegExp("(?=.*[A-Z])");
final RegExp numberValidationRegExp = RegExp("[0-9]");

const String emailEmptyErrorText = "Please enter your email";
const String invalidEmailErrorText = "Please enter valid email";
const String passwordEmptyErrorText = "Please enter your password";
const String passwordLowercaseMissed = "Add lowercaset to your password";
const String passwordUppercaseMissed = "Add uppercase to your password";
const String passwordNumberMissed = "Add number to your password";
const String passwordLessAtLength = "Your password is too short";

String dateConverter(DateTime value) {
  String day;
  String month;

  if (value.weekday == 1) {
    day = "Senin";
  } else if (value.weekday == 2) {
    day = "Selasa";
  } else if (value.weekday == 3) {
    day = "Rabu";
  } else if (value.weekday == 4) {
    day = "Rabu";
  } else if (value.weekday == 5) {
    day = "Rabu";
  } else if (value.weekday == 6) {
    day = "Rabu";
  } else if (value.weekday == 7) {
    day = "Rabu";
  }

  if (value.month == 1) {
    month = "Januari";
  } else if (value.month == 2) {
    month = "Februari";
  } else if (value.month == 3) {
    month = "Maret";
  } else if (value.month == 4) {
    month = "April";
  } else if (value.month == 5) {
    month = "Mei";
  } else if (value.month == 6) {
    month = "Juni";
  } else if (value.month == 7) {
    month = "Juli";
  } else if (value.month == 8) {
    month = "Agustus";
  } else if (value.month == 9) {
    month = "September";
  } else if (value.month == 10) {
    month = "Oktober";
  } else if (value.month == 11) {
    month = "November";
  } else if (value.month == 12) {
    month = "Desember";
  }

  return '$day, ${value.day} $month ${value.year}';
}
