import 'package:dkatalis/components/check_icon.dart';
import 'package:dkatalis/components/checker_complexity.dart';
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
                  Column(
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
                  ),
                  SizedBox(width: getProportionateScreenWidth(375 / 16)),
                  Column(
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
                  ),
                  SizedBox(width: getProportionateScreenWidth(375 / 16)),
                  Column(
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
                  ),
                  SizedBox(width: getProportionateScreenWidth(375 / 16)),
                  Column(
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
                        "Character",
                        style: complexityInfo,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
