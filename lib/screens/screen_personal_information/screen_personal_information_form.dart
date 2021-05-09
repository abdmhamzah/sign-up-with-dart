import 'package:flutter/material.dart';
import 'package:dkatalis/size_config.dart';
import 'components/body.dart';

class ScreenPersonalInfoForm extends StatelessWidget {
  static String routeName = "/personal_info_form";
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}
