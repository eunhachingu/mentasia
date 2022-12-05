import 'package:flutter/material.dart';

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
          // How Mentasia Works
          Center(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 40),
              child: Text(
                "How Mentasia Works",
                style: Theme.of(context).textTheme.labelLarge,
              ),
            ),
          ),

          // Sign in
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                child: const Image(
                  image: AssetImage(tNumber1),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.blue,
                ),
                height: 136,
                width: 350,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const Text(
                        "Sign-in",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Text(
                        textAlign: TextAlign.justify,
                        "Sign-in using Google or Facebook to save your progress and information in our application. It can help us optimize to make your experience personalized.",
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),

          SizedBox(
            height: 20,
          ),

          // Chat
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                child: const Image(
                  image: AssetImage(tNumber2),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.blue,
                ),
                height: 136,
                width: 350,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const Text(
                        "Chat",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Text(
                        textAlign: TextAlign.justify,
                        "After signing-in, you can now proceed to have a chat with our chatbot. Our bot will help you find  as well as provide your needs.",
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),

          SizedBox(
            height: 20,
          ),

          // Enjoy
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                child: const Image(
                  image: AssetImage(tNumber3),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.blue,
                ),
                height: 136,
                width: 350,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const Text(
                        "Enjoy",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Text(
                        textAlign: TextAlign.justify,
                        "The chatbot can provide you two things, a compassionate interlocutor and a contact to a professional.",
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
