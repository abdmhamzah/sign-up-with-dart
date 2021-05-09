import 'package:dkatalis/components/checker_info.dart';
import 'package:dkatalis/components/default_button.dart';
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
  String password;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildPasswordFormField(),
          CheckerInfo(errors: errors),
          SizedBox(height: 100),
          DefaultButton(
            text: "Next",
            press: () {
              Navigator.pushNamed(context, ScreenPersonalInfoForm.routeName);
              // if (_formKey.currentState.validate() && errors.length == 0) {
              //   _formKey.currentState.save();
              // }
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
        // onChanged: (value) {
        //   if (value.isNotEmpty && errors.contains(emailEmptyErrorText)) {
        //     setState(() {
        //       errors.remove(emailEmptyErrorText);
        //     });
        //   } else if (emailValidatorRegExp.hasMatch(value) &&
        //       errors.contains(invalidEmailErrorText)) {
        //     setState(() {
        //       errors.remove(invalidEmailErrorText);
        //     });
        //   }
        //   return null;
        // },
        validator: (value) {
          if (value.isEmpty && !errors.contains(emailEmptyErrorText)) {
            setState(() {
              errors.add(emailEmptyErrorText);
            });
          } else if (!emailValidatorRegExp.hasMatch(value) &&
              !errors.contains(invalidEmailErrorText) &&
              errors.length == 0) {
            setState(() {
              errors.add(invalidEmailErrorText);
            });
          }
          return null;
        },
        keyboardType: TextInputType.emailAddress,
        obscureText: !toggleVisible,
        decoration: InputDecoration(
          labelText: "Password",
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
