import 'package:dkatalis/components/body.dart';
import 'package:flutter/material.dart';
import 'package:dkatalis/size_config.dart';

class ScreenOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}
