import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mentasia/screens/chat/chat_main.dart';
import 'package:mentasia/screens/chat/chat_page.dart';
import 'package:mentasia/screens/login/login_screen.dart';
import 'package:mentasia/screens/login/signup_screen.dart';
import 'package:mentasia/screens/settings/legal/terms_of_service_screen.dart';
import 'package:mentasia/screens/settings/settings_screen.dart';
import 'package:mentasia/screens/settings/support/about_us_screen.dart';
import 'package:mentasia/screens/settings/support/mentasia_works_screen.dart';
import 'package:mentasia/screens/splash_screen.dart';

import '../screens/home_screen.dart';
import '../screens/settings/account_settings/personal_account_screen.dart';
import '../screens/settings/account_settings/notifications_screen.dart';

class SplashScreenController extends GetxController {
  static SplashScreenController get find => Get.find();

  RxBool animate = false.obs;

  Future startAnimation() async {
    await Future.delayed(Duration(milliseconds: 500));
    animate.value = true;
    await Future.delayed(Duration(milliseconds: 3000));
    // ignore: use_build_context_synchronously
    Get.to(HomeScreen());
    // Navigator.pushReplacement(
    //     context, MaterialPageRoute(builder: (context) => rconst AppHome()));
  }
}
