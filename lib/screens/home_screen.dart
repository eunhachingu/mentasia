import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mentasia/screens/chat_screen.dart';
import 'package:mentasia/screens/login/login_screen.dart';
import 'package:mentasia/utils/submit_card.dart';

import '../constants/image_strings.dart';
import '../routing/route_generator.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF429191), Color(0xFFEFCDBF)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                // ignore: prefer_const_constructors

                // Icon
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 16.0, vertical: 24.0),
                ),
                SizedBox(
                  height: 150,
                ),

                // Image Logo
                const Center(
                  child: Image(
                    height: 120,
                    width: 120,
                    image: AssetImage(tSplashIcon),
                  ),
                ),

                // Body
                Center(
                  child: Text(
                    "Welcome to Mentasia",
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                ),

                const SizedBox(
                  height: 20,
                ),

                Center(
                    child: Column(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Text(
                      "Sign in to start a message",
                      style: Theme.of(context).textTheme.titleSmall!.copyWith(
                            color: Color(0xFF429191),
                          ),
                    ),
                    Text(
                      "with our chatbot",
                      style: Theme.of(context).textTheme.titleSmall!.copyWith(
                            color: Color(0xFF429191),
                          ),
                    ),
                  ],
                )),
                const SizedBox(
                  height: 150,
                ),

                // Chat now
                Center(
                  child: SubmitCard(
                    buttonText: "CHAT NOW",
                    onTap: () => Get.to(
                      ChatScreen(),
                    ),
                    colorButton: Colors.white,
                    colorText: Colors.black,
                  ),
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Have an account?",
                      style: Theme.of(context).textTheme.labelMedium,
                    ),
                    TextButton(
                      onPressed: () => Get.to(
                        LoginScreen(),
                      ),
                      child: Text("Login"),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
