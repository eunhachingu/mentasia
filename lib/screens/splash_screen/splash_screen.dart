import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';


import '../../constants/image_strings.dart';
import '../../controllers/splash_screen_controller.dart';
import '../home_screen.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({super.key});

  final splashController = Get.put(SplashScreenController());

  @override
  Widget build(BuildContext context) {
    splashController.startAnimation();
    return Scaffold(
      backgroundColor: Color(0xFF429191),
      body: SafeArea(
        child: Center(
          child: Stack(
            alignment: Alignment.center,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Obx(
                () => AnimatedPositioned(
                  duration: const Duration(milliseconds: 1600),
                  top: splashController.animate.value ? 200 : 100,
                  child: const Image(
                    width: 120,
                    height: 120,
                    image: AssetImage(tSplashIcon),
                  ),
                ),
              ),
              Obx(
                () => AnimatedPositioned(
                  duration: const Duration(milliseconds: 1600),
                  top: 320,
                  child: AnimatedOpacity(
                    duration: const Duration(milliseconds: 1600),
                    opacity: splashController.animate.value ? 1 : 0,
                    child: Text(
                      "MENTASIA",
                      style: GoogleFonts.barlowCondensed(
                        fontSize: 48,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 15,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              Obx(
                () => AnimatedPositioned(
                  duration: const Duration(milliseconds: 1600),
                  bottom: 20,
                  child: AnimatedOpacity(
                    duration: const Duration(milliseconds: 1600),
                    opacity: splashController.animate.value ? 1 : 0,
                    child: Text(
                      "made by Rechaerg",
                      style: GoogleFonts.barlowCondensed(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
