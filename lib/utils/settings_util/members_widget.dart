import 'package:flutter/material.dart';

import '../../constants/image_strings.dart';

class MembersWidget extends StatelessWidget {
  String imagePath;
  String name;
  String description;

  MembersWidget(
      {required this.imagePath,
      required this.name,
      required this.description,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
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
              color: Colors.white,
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
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
                  Text(description),
                ],
              ),
            )),
      ],
    );
  }
}
