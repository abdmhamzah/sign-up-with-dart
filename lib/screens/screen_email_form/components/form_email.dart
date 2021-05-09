import 'package:dkatalis/components/default_button.dart';
import 'package:dkatalis/components/form_error.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class FormEmail extends StatefulWidget {
  @override
  _FormEmailState createState() => _FormEmailState();
}

class _FormEmailState extends State<FormEmail> {
  final _formKey = GlobalKey<FormState>();
  final List<String> errors = [];
  String email;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          buildEmailFormField(),
          FormError(errors: errors),
          SizedBox(height: 50),
          DefaultButton(
            text: "Next",
            press: () {
              if (_formKey.currentState.validate()) {
                _formKey.currentState.save();
              }
            },
          )
        ],
      ),
    );
  }

  Container buildEmailFormField() {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
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
          onSaved: (newValue) => email = newValue,
          onChanged: (value) {
            if (value.isNotEmpty && errors.contains(emailEmptyErrorText)) {
              setState(() {
                errors.remove(emailEmptyErrorText);
              });
            } else if (emailValidatorRegExp.hasMatch(value) &&
                errors.contains(invalidEmailErrorText)) {
              setState(() {
                errors.remove(invalidEmailErrorText);
              });
            }
            return null;
          },
          validator: (value) {
            if (value.isEmpty && !errors.contains(emailEmptyErrorText)) {
              setState(() {
                errors.add(emailEmptyErrorText);
              });
            } else if (!emailValidatorRegExp.hasMatch(value) &&
                !errors.contains(invalidEmailErrorText)) {
              setState(() {
                errors.add(invalidEmailErrorText);
              });
            }
            return null;
          },
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
