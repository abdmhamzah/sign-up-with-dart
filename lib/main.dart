import 'package:dkatalis/screens/screen_email_form/screen_email_form.dart';
import 'package:dkatalis/screens/screen_password_form/screen_password_form.dart';
import 'package:dkatalis/screens/screen_personal_information/screen_personal_information_form.dart';
// import 'package:dkatalis/screens/screen_schedule_vc/screen_schedule_vc.dart';
import 'package:dkatalis/theme.dart';
import 'package:flutter/material.dart';
import 'routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Test Hamzah Abdullah Mubarak',
      debugShowCheckedModeBanner: false,
      theme: theme(),
      initialRoute: ScreenPersonalInfoForm.routeName,
      routes: routes,
    );
  }
}
