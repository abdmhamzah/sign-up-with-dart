import 'package:dkatalis/screens/screen_email_form/screen_email_form.dart';

import 'package:dkatalis/theme.dart';
import 'package:flutter/material.dart';
import 'routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Test Hamzah Abdullah Mubarak',
      debugShowCheckedModeBanner: false,
      theme: theme(),
      initialRoute: ScreenEmailForm.routeName,
      routes: routes,
    );
  }
}
