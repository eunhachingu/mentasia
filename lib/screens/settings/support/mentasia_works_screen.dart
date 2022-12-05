import 'package:flutter/material.dart';
import 'package:mentasia/utils/mentasia_card.dart';

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
      body: Stack(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 20.0),
              child: Text(
                "How Mentasia Works",
                style: Theme.of(context).textTheme.labelLarge,
              ),
            ),
          ),
          const Positioned(
            top: 150,
            right: 50,
            child: MentasiaCard(
              image: tGmail,
              labelText:
                  "Sign in using Google or Facebook to optimized your personal experienced",
            ),
          ),
          const Positioned(
            top: 350,
            left: 50,
            child: MentasiaCard(
              image: tChat,
              labelText:
                  "Chat with our chatbot, the bot will provide your needs.",
            ),
          ),
          const Positioned(
            top: 550,
            right: 50,
            child: MentasiaCard(
              image: tMind,
              labelText: "Compassionate Interlocutor, Contact to professional.",
            ),
          ),
        ],
      ),
    );
  }
}
