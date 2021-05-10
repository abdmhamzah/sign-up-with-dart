import 'package:flutter/material.dart';
import 'package:dkatalis/size_config.dart';
import 'components/body.dart';

class ScreenSuccess extends StatelessWidget {
  static String routeName = "/success_screen";
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}
