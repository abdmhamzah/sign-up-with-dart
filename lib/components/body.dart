import 'package:dkatalis/size_config.dart';
import 'package:flutter/material.dart';
import 'package:dkatalis/constants.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Expanded(
          flex: 3,
          child: Stack(
            children: <Widget>[
              Container(
                constraints: BoxConstraints.expand(),
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/header.png'),
                      fit: BoxFit.cover,
                    ),
                    color: Colors.grey.shade300),
              ),
              Container(
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
              )
            ],
          )),
      Expanded(
          flex: 7,
          child: Container(
            color: Colors.grey.shade300,
            width: getProportionateScreenWidth(375),
            child: Column(
              children: <Widget>[
                RichText(
                  textAlign: TextAlign.left,
                  text: TextSpan(children: <TextSpan>[
                    TextSpan(
                        text: "Welcome to \nGIN",
                        style: TextStyle(
                            fontSize: 35,
                            color: Colors.black,
                            fontWeight: FontWeight.bold)),
                    TextSpan(
                        text: " Finans",
                        style: TextStyle(
                            fontSize: 35,
                            color: Colors.blue,
                            fontWeight: FontWeight.bold)),
                  ]),
                )
              ],
            ),
          ))
    ]);
  }
}
