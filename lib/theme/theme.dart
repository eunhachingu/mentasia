import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const Color darkGreen = Color(0xFF194545);
const Color lightGreen = Color(0xFF429191);
const Color lighterGreen = Color(0xFFBFD9D8);
const Color white = Color(0xFFEEEEEE);
const Color black = Color(0xFF252525);

ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  textTheme: TextTheme(
    // Title Large
    titleLarge: GoogleFonts.poppins(
      fontSize: 48,
      color: white,
    ),

    // Title Medium

    titleMedium: GoogleFonts.poppins(
      fontSize: 32,
      color: darkGreen,
    ),

    // Subtitle

    titleSmall: GoogleFonts.poppins(
      fontSize: 12,
      color: white,
    ),

    // Display Title
    displayLarge: GoogleFonts.poppins(
      fontSize: 20,
      color: black,
    ),

    // Label Large
    labelLarge: GoogleFonts.poppins(
      fontSize: 16,
      color: black,
    ),

    // Category
    labelSmall: GoogleFonts.poppins(
      fontSize: 12,
      color: white,
    ),

    bodySmall: GoogleFonts.poppins(
      fontSize: 16,
      color: black,
    ),
  ),
);
