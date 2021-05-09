import 'package:flutter/material.dart';
import 'routes.dart';
import 'screens/screen_email_form/screen_email_form.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          fontFamily: "Roboto",
          textTheme: TextTheme(
            bodyText1: TextStyle(color: Colors.white),
            bodyText2: TextStyle(color: Colors.black),
          ),
          visualDensity: VisualDensity.adaptivePlatformDensity),
      initialRoute: ScreenEmailForm.routeName,
      routes: routes,
    );
  }
}
