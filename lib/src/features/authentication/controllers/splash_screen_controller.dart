import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../screens/welcome-screen/homescreen.dart';

class SplashScreenController extends GetxController {
  static SplashScreenController get find => Get.find();

  RxBool animate = false.obs;

  Future startAnimation() async {
    await Future.delayed(Duration(milliseconds: 500));
    animate.value = true;
    await Future.delayed(Duration(milliseconds: 3000));
    // ignore: use_build_context_synchronously
    Get.to(const HomeScreen());
    // Navigator.pushReplacement(
    //     context, MaterialPageRoute(builder: (context) => const AppHome()));
  }
}
