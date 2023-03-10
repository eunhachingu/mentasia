import 'package:flutter/material.dart';

void showCustomSnackBar(context, msg) {
  final snackBar = SnackBar(
    content: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Icon(
          Icons.info_outline,
          size: 32,
        ),
        SizedBox(
          width: 16,
        ),
        Expanded(
          child: Text(
            msg,
            style: TextStyle(
              fontSize: 20,
            ),
          ),
        ),
      ],
    ),
  );

  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}
