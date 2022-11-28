import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mentasia/src/constants/image_strings.dart';

class SettingsButton extends StatelessWidget {
  final String textLabel;
  final imageString;

  const SettingsButton({super.key, required this.textLabel, this.imageString});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          gradient: const LinearGradient(
            colors: [
              Color(0xFF429191),
              Color(0xFF54CCCC),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.6, 0.9],
          ),
        ),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              decoration: const BoxDecoration(
                color: Color(0xFFBFD9D8),
                shape: BoxShape.circle,
              ),
              child: Image(
                image: AssetImage(imageString),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              textLabel,
              style: GoogleFonts.barlow(
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
