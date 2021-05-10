import 'package:dkatalis/components/back_button.dart';
import 'package:dkatalis/screens/screen_schedule_vc/components/form_schedule_vc.dart';
import 'package:dkatalis/size_config.dart';
import 'package:flutter/material.dart';
import 'package:dkatalis/constants.dart';
import 'package:dkatalis/components/stepper_screen.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Expanded(
        flex: 3,
        child: Stack(
          children: <Widget>[
            buildTopShape(),
            StepperContent(currentScreen: 3),
            backButton(context),
          ],
        ),
      ),
      Expanded(
        flex: 7,
        child: Container(
          color: primaryColor,
          child: Column(
            children: [
              buildMiddleContent(),
            ],
          ),
        ),
      )
    ]);
  }

  Container buildTopShape() {
    return Container(
      constraints: BoxConstraints.expand(),
      decoration: BoxDecoration(
        color: primaryColor,
      ),
    );
  }

  Container buildMiddleContent() {
    return Container(
      padding: const EdgeInsets.only(left: 20, right: 20),
      color: primaryColor,
      width: getProportionateScreenWidth(375),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text("Schedule Video Call", style: titleWhite),
          SizedBox(height: 10),
          Text(
            "Choose the date and time that you prefered, we will send a ling via email to make a video call on the scheduled date and time.",
            style: bodyWhite,
          ),
          SizedBox(height: 20),
          FormScheduleVc()
        ],
      ),
    );
  }
}
