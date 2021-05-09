import 'package:dkatalis/constants.dart';
import 'package:flutter/material.dart';

class CheckIcon extends StatelessWidget {
  const CheckIcon({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 30,
      child: Icon(
        Icons.check,
        color: Colors.white,
      ),
      decoration: BoxDecoration(
        color: successColor,
        borderRadius: BorderRadius.circular(30),
      ),
    );
  }
}
