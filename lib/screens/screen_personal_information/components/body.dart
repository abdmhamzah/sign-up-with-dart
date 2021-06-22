import 'package:dkatalis/components/back_button.dart';
import 'package:dkatalis/components/stepper_screen.dart';
import 'package:dkatalis/screens/screen_personal_information/components/form_personal_information.dart';
import 'package:dkatalis/size_config.dart';
import 'package:flutter/material.dart';
import 'package:dkatalis/constants.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          flex: 3,
          child: Stack(
            children: <Widget>[
              buildTopShape(),
              StepperContent(currentScreen: 2),
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
      ],
    );
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
          Text("Personal Information", style: titleWhite),
          SizedBox(height: 10),
          Text(
            "Please fill in the information below and your goal for digital saving.",
            style: bodyWhite,
          ),
          SizedBox(height: 20),
          FormPersonalInfo()
        ],
      ),
    );
  }
}
