import 'package:dkatalis/components/back_button.dart';
import 'package:dkatalis/screens/screen_password_form/components/form_password.dart';
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
    return Column(
      children: <Widget>[
        Expanded(
          flex: 3,
          child: Stack(
            children: <Widget>[
              buildTopShape(),
              StepperContent(currentScreen: 1),
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
      width: getProportionateScreenWidth(375),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("Create Password", style: titleWhite),
            SizedBox(height: 10),
            Text(
              "Password will be used to login to account",
              style: bodyWhite,
            ),
            SizedBox(height: 20),
            FormPassword()
          ],
        ),
      ),
    );
  }
}
