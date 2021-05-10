import 'package:dkatalis/constants.dart';
import 'package:flutter/material.dart';

class AnimatedShrinkGrowIcon extends StatelessWidget {
  const AnimatedShrinkGrowIcon({
    Key key,
    @required Tween<double> tween,
    @required this.controller,
  })  : _tween = tween,
        super(key: key);

  final Tween<double> _tween;
  final AnimationController controller;

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
        alignment: Alignment.center,
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(55),
        ),
        child: ScaleTransition(
          scale: _tween.animate(
            CurvedAnimation(
              parent: controller,
              curve: Curves.elasticOut,
            ),
          ),
          child: AnimatedIcon(
            icon: AnimatedIcons.add_event,
            size: 35,
            color: primaryColor,
            progress: controller,
          ),
        ),
      ),
    );
  }
}
