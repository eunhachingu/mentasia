import 'package:flutter/material.dart';
import 'package:mentasia/src/constants/image_strings.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            // ignore: prefer_const_constructors

            // Icon
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black,
                  ),
                ),
                child: const Icon(size: 40, Icons.dehaze),
              ),
            ),

            // Image Logo
            const Center(
              child: Image(
                height: 240,
                width: 240,
                image: AssetImage(tSplashIcon),
              ),
            ),

            // Body
            const Center(
              child: Text(
                "Welcome to Mentasia",
              ),
            ),

            const SizedBox(
              height: 20,
            ),

            Center(
                child: Column(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const Text("Sign in to start a message"),
                const Text("with our chatbot"),
              ],
            )),
            SizedBox(
              height: 100,
            ),

            // Chat now
            Center(
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      padding:
                          EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                      textStyle: TextStyle(fontSize: 28),
                      primary: Colors.green,
                      onPrimary: Colors.white,
                      side: BorderSide(width: 3, color: Colors.white),
                      shape: StadiumBorder()),
                  onPressed: () {},
                  child: Text("Chat now")),
            ),
          ],
        ),
      ),
    );
  }
}
