import 'package:flutter/material.dart';
import 'package:dkatalis/screens/screen_success/screen_success.dart';
import 'package:dkatalis/screens/screen_personal_information/screen_personal_information_form.dart';
import 'package:dkatalis/screens/screen_schedule_vc/screen_schedule_vc_form.dart';
import 'package:dkatalis/screens/screen_email_form/screen_email_form.dart';
import 'screens/screen_password_form/screen_password_form.dart';

final Map<String, WidgetBuilder> routes = {
  ScreenEmailForm.routeName: (context) => ScreenEmailForm(),
  ScreenPasswordForm.routeName: (context) => ScreenPasswordForm(),
  ScreenPersonalInfoForm.routeName: (context) => ScreenPersonalInfoForm(),
  ScreenScheduleVcForm.routeName: (context) => ScreenScheduleVcForm(),
  ScreenSuccess.routeName: (context) => ScreenSuccess(),
};
