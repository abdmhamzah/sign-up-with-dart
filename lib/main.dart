import 'package:dkatalis/screens/screen_password_form/screen_password_form.dart';
import 'package:dkatalis/theme.dart';
import 'package:flutter/material.dart';
import 'routes.dart';
import 'screens/screen_email_form/screen_email_form.dart';
import 'screens/screen_password_form/screen_password_form.dart';

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
      initialRoute: ScreenPasswordForm.routeName,
      routes: routes,
    );
  }
}
