import 'package:flutter/material.dart';

import '../size_config.dart';

class FormError extends StatelessWidget {
  const FormError({
    Key key,
    @required this.errors,
  }) : super(key: key);

  final List<String> errors;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      child: Column(
        children: List.generate(
          errors.length,
          (index) => formErrorText(error: errors[index]),
        ),
      ),
    );
  }

  Row formErrorText({String error}) {
    return Row(
      children: [
        Icon(Icons.error_outline_outlined, size: 18, color: Colors.red),
        SizedBox(width: getProportionateScreenWidth(5)),
        Text(error),
      ],
    );
  }
}
