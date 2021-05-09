import 'package:dkatalis/constants.dart';
import 'package:dkatalis/size_config.dart';
import 'package:flutter/material.dart';

class CheckerComplexity extends StatelessWidget {
  const CheckerComplexity({
    Key key,
    @required this.value,
  }) : super(key: key);

  final String value;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20),
      width: getProportionateScreenWidth(375),
      child: RichText(
        textAlign: TextAlign.left,
        text: TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: "Complexity: ",
              style: bodyWhite,
            ),
            (() {
              if (!uppercaseValidationRegExp.hasMatch(value) &&
                  !lowercaseValidationRegExp.hasMatch(value) &&
                  !numberValidationRegExp.hasMatch(value) &&
                  value.length < 9) {
                return TextSpan(
                  text: "Poor",
                  style: infoDanger,
                );
              } else if (!uppercaseValidationRegExp.hasMatch(value) &&
                  lowercaseValidationRegExp.hasMatch(value) &&
                  !numberValidationRegExp.hasMatch(value) &&
                  value.length < 9) {
                return TextSpan(
                  text: "Poor",
                  style: infoDanger,
                );
              } else if (uppercaseValidationRegExp.hasMatch(value) &&
                  !lowercaseValidationRegExp.hasMatch(value) &&
                  !numberValidationRegExp.hasMatch(value) &&
                  value.length < 9) {
                return TextSpan(
                  text: "Very Weak",
                  style: infoWarning,
                );
              } else if (uppercaseValidationRegExp.hasMatch(value) &&
                  lowercaseValidationRegExp.hasMatch(value) &&
                  !numberValidationRegExp.hasMatch(value)) {
                return TextSpan(
                  text: "Very Weak",
                  style: infoWarning,
                );
              } else if (uppercaseValidationRegExp.hasMatch(value) &&
                  lowercaseValidationRegExp.hasMatch(value) &&
                  numberValidationRegExp.hasMatch(value) &&
                  value.length >= 9) {
                return TextSpan(
                  text: "Good",
                  style: infoSuccess,
                );
              } else {
                return TextSpan(
                  text: "",
                );
              }
            }()),
          ],
        ),
      ),
    );
  }
}
