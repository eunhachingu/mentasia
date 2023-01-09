import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mentasia/utils/settings_util/mentasia_card.dart';

import '../../../constants/image_strings.dart';

class MentasiaWorksScreen extends StatefulWidget {
  const MentasiaWorksScreen({super.key});

  @override
  State<MentasiaWorksScreen> createState() => _MentasiaWorksScreenState();
}

class _MentasiaWorksScreenState extends State<MentasiaWorksScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Center(
            child: Text(
              "How Mentasia Works",
              style: GoogleFonts.barlow(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          MentasiaCard(
              image: tGmail,
              labelText:
                  "Sign in using Google or Facebook.To optimized your personal experienced"),
          SizedBox(
            height: 50,
          ),
          MentasiaCard(
              image: tChat,
              labelText:
                  "Chat with our chatbot. The bot will provide your needs."),
          SizedBox(
            height: 50,
          ),
          MentasiaCard(
              image: tMind,
              labelText:
                  "Compassionate Interlocutor. Contact to professional."),
          SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }
}
