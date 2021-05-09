import 'package:dkatalis/components/default_button.dart';
import 'package:flutter/material.dart';

class FormEmail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          buildEmailFormField(),
          SizedBox(height: 120),
          DefaultButton(
            text: "Next",
            press: () {
              print("process");
            },
          )
        ],
      ),
    );
  }

  Container buildEmailFormField() {
    return Container(
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
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            labelText: "Email",
            border: InputBorder.none,
            floatingLabelBehavior: FloatingLabelBehavior.never,
            contentPadding: EdgeInsets.only(bottom: 15),
            icon: Icon(Icons.mail_outline),
          ),
        ),
      ),
    );
  }
}
