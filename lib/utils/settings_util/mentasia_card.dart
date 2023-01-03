import 'package:flutter/material.dart';

import '../../constants/image_strings.dart';

class MentasiaCard extends StatelessWidget {
  final String image;
  final String labelText;

  const MentasiaCard({super.key, required this.image, required this.labelText});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Container(
        padding: EdgeInsets.all(5),
        color: Colors.grey[300],
        width: 250,
        child: Column(
          children: [
            Image(
              image: AssetImage(image),
            ),
            Center(
              child: Text(
                labelText,
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
