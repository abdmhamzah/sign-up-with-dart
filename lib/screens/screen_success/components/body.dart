import 'package:dkatalis/components/default_button.dart';
import 'package:dkatalis/constants.dart';
import 'package:dkatalis/screens/screen_email_form/screen_email_form.dart';
import 'package:dkatalis/screens/screen_personal_information/screen_personal_information_form.dart';
import 'package:dkatalis/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: getProportionateScreenHeight(812),
      width: getProportionateScreenWidth(375),
      decoration: BoxDecoration(color: primaryColor),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 150,
            width: 150,
            decoration: BoxDecoration(
              color: successColor,
              borderRadius: BorderRadius.circular(150),
            ),
            child: Icon(
              Icons.check_rounded,
              size: 150,
              color: Colors.grey.shade300,
            ),
          ),
          SizedBox(height: 50),
          Text(
            "You Are Successfully Registered",
            style: TextStyle(
              fontSize: 30,
              color: Colors.grey.shade300,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 10),
          Text(
            "We will be back shortly",
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey.shade300,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 100),
          Container(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: DefaultButton(
              text: "Back",
              press: () {
                Navigator.pushNamed(context, ScreenEmailForm.routeName);
              },
            ),
          )
        ],
      ),
    );
  }
}
