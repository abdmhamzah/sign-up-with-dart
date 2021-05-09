import 'package:flutter/material.dart';
import 'package:dkatalis/size_config.dart';
import 'components/body.dart';

class ScreenPasswordForm extends StatelessWidget {
  static String routeName = "/password_form";
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      // appBar: AppBar(),
      body: Body(),
    );
  }
}
