import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const Color darkGreen = Color(0xFF194545);
const Color lightGreen = Color(0xFF429191);
const Color lighterGreen = Color(0xFFBFD9D8);
const Color white = Color(0xFFEEEEEE);
const Color black = Color(0xFF252525);

class TAppTheme {
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    textTheme: TextTheme(
      titleLarge: GoogleFonts.poppins(
        color: white,
        fontSize: 48,
        fontWeight: FontWeight.bold,
      ),
      titleMedium: GoogleFonts.poppins(
        color: darkGreen,
        fontSize: 32,
        fontWeight: FontWeight.bold,
      ),
      bodyMedium: GoogleFonts.poppins(
        color: white,
        fontSize: 20,
      ),
      bodySmall: GoogleFonts.poppins(
        color: white,
        fontSize: 16,
      ),
      labelMedium: GoogleFonts.poppins(
        color: black,
        fontWeight: FontWeight.bold,
        fontSize: 16,
        letterSpacing: 5,
      ),
      labelLarge: GoogleFonts.poppins(
        color: black,
        fontSize: 18,
      ),
      displayMedium: GoogleFonts.poppins(
        color: black,
        fontSize: 20,
      ),
      displaySmall: GoogleFonts.poppins(
        color: black,
        fontSize: 16,
      ),
    ),
  );
}
