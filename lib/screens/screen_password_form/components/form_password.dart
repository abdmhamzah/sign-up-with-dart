import 'package:dkatalis/components/default_button.dart';
import 'package:dkatalis/screens/screen_password_form/components/checker_info.dart';
import 'package:dkatalis/screens/screen_personal_information/screen_personal_information_form.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class FormPassword extends StatefulWidget {
  @override
  _FormPasswordState createState() => _FormPasswordState();
}

class _FormPasswordState extends State<FormPassword> {
  final _formKey = GlobalKey<FormState>();
  final List<String> errors = [];
  bool toggleVisible = false;
  String _currentTextValue = '';
  String password;

  void _textValue(String value) {
    setState(() => _currentTextValue = value);
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildPasswordFormField(),
          CheckerInfo(value: _currentTextValue),
          SizedBox(height: 100),
          DefaultButton(
            text: "Next",
            press: () {
              if (_formKey.currentState.validate() && errors.length == 0) {
                Navigator.pushNamed(context, ScreenPersonalInfoForm.routeName);
                _formKey.currentState.save();
              }
            },
          )
        ],
      ),
    );
  }

  Container buildPasswordFormField() {
    return Container(
      padding: EdgeInsets.only(left: 20, right: 20),
      decoration: BoxDecoration(
        color: Colors.grey.shade300,
        borderRadius: new BorderRadius.circular(8),
      ),
      child: TextFormField(
        onSaved: (newValue) => password = newValue,
        onChanged: (value) {
          if (value.isNotEmpty && errors.contains(passwordEmptyErrorText)) {
            setState(() {
              errors.remove(passwordEmptyErrorText);
            });
          }
          if (value.length >= 9 && errors.contains(passwordLessAtLength)) {
            setState(() {
              errors.remove(passwordLessAtLength);
            });
          }
          if (lowercaseValidationRegExp.hasMatch(value) &&
              errors.contains(passwordLowercaseMissed)) {
            setState(() {
              errors.remove(passwordLowercaseMissed);
            });
          }
          if (uppercaseValidationRegExp.hasMatch(value) &&
              errors.contains(passwordUppercaseMissed)) {
            setState(() {
              errors.remove(passwordUppercaseMissed);
            });
          }
          if (numberValidationRegExp.hasMatch(value) &&
              errors.contains(passwordNumberMissed)) {
            setState(() {
              errors.remove(passwordNumberMissed);
            });
          }
          _textValue(value);
          return null;
        },
        validator: (value) {
          if (value.isEmpty && !errors.contains(passwordEmptyErrorText)) {
            setState(() {
              errors.add(passwordEmptyErrorText);
            });
          }
          if (value.length < 9 && !errors.contains(passwordLessAtLength)) {
            setState(() {
              errors.add(passwordLessAtLength);
            });
          }
          if (!lowercaseValidationRegExp.hasMatch(value) &&
              !errors.contains(passwordLowercaseMissed)) {
            setState(() {
              errors.add(passwordLowercaseMissed);
            });
          }
          if (!uppercaseValidationRegExp.hasMatch(value) &&
              !errors.contains(passwordUppercaseMissed)) {
            setState(() {
              errors.add(passwordUppercaseMissed);
            });
          }
          if (!numberValidationRegExp.hasMatch(value) &&
              !errors.contains(passwordNumberMissed)) {
            setState(() {
              errors.add(passwordNumberMissed);
            });
          }
          return null;
        },
        keyboardType: TextInputType.emailAddress,
        obscureText: !toggleVisible,
        decoration: InputDecoration(
          labelText: "Create Password",
          border: InputBorder.none,
          floatingLabelBehavior: FloatingLabelBehavior.never,
          contentPadding: EdgeInsets.only(bottom: 15),
          suffixIcon: IconButton(
            icon: toggleVisible
                ? Icon(Icons.visibility_off)
                : Icon(Icons.visibility),
            onPressed: () {
              setState(() {
                toggleVisible = !toggleVisible;
              });
            },
          ),
        ),
      ),
    );
  }
}
