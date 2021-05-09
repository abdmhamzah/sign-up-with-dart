import 'package:flutter/material.dart';
import 'package:dkatalis/screens/screen_email_form/screen_email_form.dart';
import 'screens/screen_password_form/screen_password_form.dart';

final Map<String, WidgetBuilder> routes = {
  ScreenEmailForm.routeName: (context) => ScreenEmailForm(),
  ScreenPasswordForm.routeName: (context) => ScreenPasswordForm()
};
