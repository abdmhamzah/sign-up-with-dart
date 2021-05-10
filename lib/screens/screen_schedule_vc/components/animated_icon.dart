import 'package:dkatalis/constants.dart';
import 'package:flutter/material.dart';

class AnimatedIcon extends StatelessWidget {
  const AnimatedIcon({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 135, left: 20),
      height: (55),
      width: 55,
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: BorderRadius.circular(55),
      ),
      child: Container(
        height: (10),
        width: 10,
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Icon(
          Icons.calendar_today_rounded,
          size: 20,
          color: primaryColor,
        ),
      ),
    );
  }
}
