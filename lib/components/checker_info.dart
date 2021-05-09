import 'package:dkatalis/constants.dart';
import 'package:dkatalis/size_config.dart';
import 'package:flutter/material.dart';

class CheckerInfo extends StatelessWidget {
  const CheckerInfo({
    Key key,
    @required this.errors,
  }) : super(key: key);

  final List<String> errors;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
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
                TextSpan(
                  text: "Very Weak",
                  style: infoWarning,
                )
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 60),
          child: Container(
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Text(
                        "a",
                        style: complexityTitle,
                        textAlign: TextAlign.center,
                      ),
                      // CheckIcon(),
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
                      Text(
                        "A",
                        style: complexityTitle,
                        textAlign: TextAlign.center,
                      ),
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
                      Text(
                        "123",
                        style: complexityTitle,
                        textAlign: TextAlign.center,
                      ),
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
                      Text(
                        "9+",
                        style: complexityTitle,
                        textAlign: TextAlign.center,
                      ),
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
