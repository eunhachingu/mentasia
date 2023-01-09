import 'package:flutter/material.dart';

import '../../constants/image_strings.dart';

class MembersWidget extends StatelessWidget {
  String imagePath;
  String name;

  MembersWidget({required this.imagePath, required this.name, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 10.0,
      ),
      child: Column(
        children: [
          Center(
            child: Image(
              image: AssetImage(imagePath),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            width: 240,
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Column(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                FittedBox(
                    fit: BoxFit.fitWidth,
                    child: Text(
                      name,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    )),
                Center(
                  child: Text(
                    "Bachelor of Science in Computer Engineering Student Polytecnic University of the Philippines",
                    style: TextStyle(),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
