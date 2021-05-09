import 'package:flutter/material.dart';

import '../constants.dart';

Padding backButton(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.only(top: 20),
    child: Row(
      children: [
        IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () {
              Navigator.of(context).pop();
            }),
        Text(
          "Create Account",
          style: buttonText,
        )
      ],
    ),
  );
}
