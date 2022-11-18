import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:mentasia/src/constants/image_strings.dart';
import 'package:mentasia/src/constants/sizes.dart';
import 'package:mentasia/src/features/authentication/controllers/splash_screen_controller.dart';

import '../homescreen.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({super.key});

  final splashController = Get.put(SplashScreenController());

  @override
  Widget build(BuildContext context) {
    splashController.startAnimation();
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Stack(
            alignment: Alignment.center,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Obx(
                () => AnimatedPositioned(
                  duration: const Duration(milliseconds: 1600),
                  top: splashController.animate.value ? 50 : 0,
                  child: const Image(
                    image: AssetImage(tSplashIcon),
                  ),
                ),
              ),
              Obx(
                () => AnimatedPositioned(
                  duration: const Duration(milliseconds: 1600),
                  top: 300,
                  child: AnimatedOpacity(
                    duration: const Duration(milliseconds: 1600),
                    opacity: splashController.animate.value ? 1 : 0,
                    child: const Text(
                      "MENTASIA",
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
                      child: const Text("created by Rechaerg")),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
