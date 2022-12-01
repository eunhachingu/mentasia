import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NotificationCard extends StatelessWidget {
  final String labelText;
  bool isPowerOn = true;
  void Function(bool)? onChanged;

  NotificationCard(
      {super.key,
      required this.labelText,
      required this.isPowerOn,
      required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(labelText),
        CupertinoSwitch(value: isPowerOn, onChanged: onChanged),
      ],
    );
  }
}
