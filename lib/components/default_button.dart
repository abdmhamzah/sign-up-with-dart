import 'package:flutter/material.dart';
import 'package:dkatalis/size_config.dart';
import 'package:dkatalis/constants.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    Key key,
    this.text,
    this.press,
  }) : super(key: key);
  final String text;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: FractionalOffset.bottomCenter,
      child: Container(
        width: getProportionateScreenWidth(375),
        child: TextButton(
          onPressed: press,
          style: TextButton.styleFrom(
            backgroundColor: Colors.blueAccent.shade100,
            padding: EdgeInsets.only(top: 15, bottom: 15),
            enableFeedback: true,
          ),
          child: Text(text, style: buttonText),
        ),
      ),
    );
  }
}
