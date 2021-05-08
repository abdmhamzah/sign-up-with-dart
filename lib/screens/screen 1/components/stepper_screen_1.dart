import 'package:flutter/material.dart';
import 'package:dkatalis/size_config.dart';
import 'package:dkatalis/constants.dart';

class StepperContent extends StatelessWidget {
  const StepperContent({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(),
      child: Row(
        children: <Widget>[
          SizedBox(
            width: getProportionateScreenWidth(375 / 16),
          ),
          Container(
            child: Center(
                child: Text(
              "1",
              style: stepper,
              textAlign: TextAlign.center,
            )),
            decoration: BoxDecoration(
              color: Colors.grey.shade300,
              borderRadius: BorderRadius.circular(375 / 8),
              boxShadow: [
                BoxShadow(color: Colors.black, spreadRadius: 1),
              ],
            ),
            width: getProportionateScreenWidth(375 / 8),
            height: getProportionateScreenWidth(375 / 8),
          ),
          SizedBox(
            width: getProportionateScreenWidth(375 / 8),
            height: 3,
            child: Container(
              color: Colors.black,
            ),
          ),
          Container(
            child: Center(
                child: Text(
              "2",
              style: stepper,
              textAlign: TextAlign.center,
            )),
            decoration: BoxDecoration(
              color: Colors.grey.shade300,
              borderRadius: BorderRadius.circular(375 / 8),
              boxShadow: [
                BoxShadow(color: Colors.black, spreadRadius: 1),
              ],
            ),
            width: getProportionateScreenWidth(375 / 8),
            height: getProportionateScreenWidth(375 / 8),
          ),
          SizedBox(
            width: getProportionateScreenWidth(375 / 8),
            height: 3,
            child: Container(
              color: Colors.black,
            ),
          ),
          Container(
            child: Center(
                child: Text(
              "3",
              style: stepper,
              textAlign: TextAlign.center,
            )),
            decoration: BoxDecoration(
              color: Colors.grey.shade300,
              borderRadius: BorderRadius.circular(375 / 8),
              boxShadow: [
                BoxShadow(color: Colors.black, spreadRadius: 1),
              ],
            ),
            width: getProportionateScreenWidth(375 / 8),
            height: getProportionateScreenWidth(375 / 8),
          ),
          SizedBox(
            width: getProportionateScreenWidth(375 / 8),
            height: 3,
            child: Container(
              color: Colors.black,
            ),
          ),
          Container(
            child: Center(
                child: Text(
              "4",
              style: stepper,
              textAlign: TextAlign.center,
            )),
            decoration: BoxDecoration(
              color: Colors.grey.shade300,
              borderRadius: BorderRadius.circular(375 / 8),
              boxShadow: [
                BoxShadow(color: Colors.black, spreadRadius: 1),
              ],
            ),
            width: getProportionateScreenWidth(375 / 8),
            height: getProportionateScreenWidth(375 / 8),
          ),
          SizedBox(
            width: getProportionateScreenWidth(375 / 16),
          ),
        ],
      ),
    );
  }
}
