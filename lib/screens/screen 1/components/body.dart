import 'package:dkatalis/screens/screen%201/components/form_email.dart';
import 'package:dkatalis/size_config.dart';
import 'package:flutter/material.dart';
import 'package:dkatalis/constants.dart';
import 'stepper_screen_1.dart';

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
            Container(
              constraints: BoxConstraints.expand(),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/header.png'),
                  fit: BoxFit.cover,
                ),
                color: Colors.grey.shade300,
              ),
            ),
            StepperContent()
          ],
        ),
      ),
      Expanded(
        flex: 7,
        child: Container(
          padding: const EdgeInsets.only(left: 20, right: 20),
          color: Colors.grey.shade300,
          width: getProportionateScreenWidth(375),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              RichText(
                textAlign: TextAlign.left,
                text: TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                      text: "Welcome to \nGIN",
                      style: TextStyle(
                        fontSize: getProportionateScreenWidth(38),
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: " Finans",
                      style: TextStyle(
                        fontSize: 35,
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Text(
                "Welcome to The Bank of The Future. \nManage and track your accounts on \nthe go.",
                style: bodyBlack,
              ),
              SizedBox(height: 20),
              FormEmail()
            ],
          ),
        ),
      )
    ]);
  }
}
