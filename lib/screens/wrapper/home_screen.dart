import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mentasia/constants/colors.dart';
import 'package:mentasia/screens/chat/chat_main.dart';
import 'package:mentasia/screens/chat/chat_page.dart';
import 'package:mentasia/screens/auth_screen/login_screen.dart';
import 'package:mentasia/utils/forms_util/submit_card.dart';

import '../../constants/image_strings.dart';
import '../../controllers/auth.dart';

class HomeScreen extends StatelessWidget {
  static String route = "homeScreen";

  const HomeScreen({super.key});

  void signinGuest(context) async {
    await Auth().signInAnonymously();

    Navigator.pushNamed(context, ChatMain.route);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: const [
              tPrimaryColor,
              tWhiteColor,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Icon
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16.0,
                    vertical: 24.0,
                  ),
                ),
                SizedBox(
                  height: 150,
                ),

                // Image Logo
                Center(
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
                    style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: tBlackColor,
                    ),
                  ),
                ),

                SizedBox(
                  height: 20,
                ),

                Center(
                    child: Column(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Text(
                      "Sign in to start a message",
                      style: TextStyle(
                        color: tBlackColor,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      "with our chatbot",
                      style: TextStyle(
                        color: tBlackColor,
                        fontSize: 16,
                      ),
                    ),
                  ],
                )),
                SizedBox(
                  height: 150,
                ),

                // Chat now
                Center(
                  child: SubmitCard(
                    buttonText: "CHAT NOW",
                    onTap: () => signinGuest(context),
                    colorButton: tPrimaryColor,
                  ),
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account?",
                    ),
                    TextButton(
                      onPressed: () =>
                          Navigator.pushNamed(context, LoginScreen.route),
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
