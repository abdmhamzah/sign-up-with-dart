import 'package:dkatalis/constants.dart';
import 'package:flutter/material.dart';
import 'package:dkatalis/size_config.dart';

class FormEmail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Colors.grey.shade100,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Container(
              padding: EdgeInsets.only(left: 20, right: 20),
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: new BorderRadius.circular(8),
              ),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: "Email",
                  border: InputBorder.none,
                  floatingLabelBehavior: FloatingLabelBehavior.never,
                  contentPadding: EdgeInsets.only(bottom: 15),
                  icon: Icon(Icons.mail_outline),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 120,
          ),
          Container(
            width: getProportionateScreenWidth(375),
            child: TextButton(
              onPressed: () {
                print('press to submit');
              },
              style: TextButton.styleFrom(
                  backgroundColor: Colors.blueAccent.shade100,
                  padding: EdgeInsets.only(top: 15, bottom: 15),
                  enableFeedback: true),
              child: Text("Next", style: buttonText),
            ),
          )
        ],
      ),
    );
  }
}
