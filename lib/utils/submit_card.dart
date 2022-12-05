import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SubmitCard extends StatelessWidget {
  final String buttonText;
  final Color? colorButton;
  final Color? colorText;
  VoidCallback onTap;

  SubmitCard({
    super.key,
    required this.buttonText,
    required this.onTap,
    this.colorButton,
    this.colorText,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 100,
      ),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: 50,
          decoration: BoxDecoration(
            color: colorButton,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Center(
            child: Text(
              buttonText,
              style: Theme.of(context)
                  .textTheme
                  .labelMedium
                  ?.copyWith(color: colorText),
            ),
          ),
        ),
      ),
    );
  }
}
