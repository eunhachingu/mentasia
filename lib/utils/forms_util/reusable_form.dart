import 'package:flutter/material.dart';

class ReusableForm extends StatelessWidget {
  final String labelText;
  final TextEditingController controller;

  const ReusableForm(
      {super.key, required this.labelText, required this.controller});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        fillColor: Color(0xFF194545),
        filled: true,
        hintText: labelText,
        hintStyle: TextStyle(
          color: Colors.white,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: Colors.black26,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: Colors.black26,
          ),
        ),
      ),
      style: TextStyle(
        color: Colors.white,
      ),
    );
  }
}
