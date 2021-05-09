import 'package:dkatalis/screens/screen_password_form/components/checker_complexity.dart';
import 'package:dkatalis/screens/screen_password_form/components/check_icon.dart';
import 'package:dkatalis/constants.dart';
import 'package:dkatalis/size_config.dart';
import 'package:flutter/material.dart';

class CheckerInfo extends StatelessWidget {
  const CheckerInfo({
    Key key,
    @required this.value,
  }) : super(key: key);

  final String value;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CheckerComplexity(value: value),
        Padding(
          padding: const EdgeInsets.only(top: 60),
          child: Container(
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  buildColumnCheckLowercase(),
                  SizedBox(width: getProportionateScreenWidth(375 / 16)),
                  buildColumnCheckUppercase(),
                  SizedBox(width: getProportionateScreenWidth(375 / 16)),
                  buildColumnCheckNumber(),
                  SizedBox(width: getProportionateScreenWidth(375 / 16)),
                  buildColumnCheckCharacters(),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  Column buildColumnCheckCharacters() {
    return Column(
      children: [
        (() {
          if (value.length > 9) {
            return CheckIcon();
          } else {
            return Text(
              "9+",
              style: complexityTitle,
              textAlign: TextAlign.center,
            );
          }
        }()),
        SizedBox(height: 10),
        Text(
          "Characters",
          style: complexityInfo,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }

  Column buildColumnCheckNumber() {
    return Column(
      children: [
        (() {
          if (numberValidationRegExp.hasMatch(value)) {
            return CheckIcon();
          } else {
            return Text(
              "123",
              style: complexityTitle,
              textAlign: TextAlign.center,
            );
          }
        }()),
        SizedBox(height: 10),
        Text(
          "Number",
          style: complexityInfo,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }

  Column buildColumnCheckUppercase() {
    return Column(
      children: [
        (() {
          if (uppercaseValidationRegExp.hasMatch(value)) {
            return CheckIcon();
          } else {
            return Text(
              "A",
              style: complexityTitle,
              textAlign: TextAlign.center,
            );
          }
        }()),
        SizedBox(height: 10),
        Text(
          "Uppercase",
          style: complexityInfo,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }

  Column buildColumnCheckLowercase() {
    return Column(
      children: [
        (() {
          if (lowercaseValidationRegExp.hasMatch(value)) {
            return CheckIcon();
          } else {
            return Text(
              "a",
              style: complexityTitle,
              textAlign: TextAlign.center,
            );
          }
        }()),
        SizedBox(height: 10),
        Text(
          "Lowercase",
          style: complexityInfo,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
