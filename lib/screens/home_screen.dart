import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mentasia/src/constants/image_strings.dart';
import 'package:mentasia/src/features/authentication/screens/chat_screen.dart';
import 'package:mentasia/src/routing/route_generator.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
                  style: GoogleFonts.barlowCondensed(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF194545),
                  ),
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
                    style: GoogleFonts.barlowCondensed(
                      fontSize: 20,
                      color: Color(0xFF429191),
                    ),
                  ),
                  Text(
                    "with our chatbot",
                    style: GoogleFonts.barlowCondensed(
                      fontSize: 20,
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
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.all(0),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20))),
                  onPressed: () => Get.toNamed(RoutesClass.getChatRoute()),
                  child: Ink(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Container(
                      constraints: const BoxConstraints(
                        maxWidth: 200,
                        maxHeight: 40,
                      ),
                      alignment: Alignment.center,
                      child: Text("CHAT NOW",
                          style: GoogleFonts.barlow(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          )),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
