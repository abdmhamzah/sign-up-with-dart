import 'package:dkatalis/screens/screen_email_form/screen_email_form.dart';
import 'package:dkatalis/screens/screen_schedule_vc/screen_schedule_vc_form.dart';
import 'package:dkatalis/screens/screen_success/screen_success.dart';

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
      initialRoute: ScreenSuccess.routeName,
      routes: routes,
    );
  }
}
