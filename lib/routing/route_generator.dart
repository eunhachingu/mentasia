import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mentasia/screens/settings/account_settings/notifications_screen.dart';
import 'package:mentasia/screens/settings/account_settings/personal_account_screen.dart';
import 'package:mentasia/screens/settings/legal/terms_of_service_screen.dart';

import '../constants/routes_strings.dart';
import '../screens/chat/chat_screen.dart';
import '../screens/home_screen.dart';
import '../screens/login/login_screen.dart';
import '../screens/login/signup_screen.dart';
import '../screens/settings/settings_screen.dart';
import '../screens/settings/support/about_us_screen.dart';
import '../screens/settings/support/help_feedback_screen.dart';
import '../screens/settings/support/mentasia_works_screen.dart';
import '../screens/splash_screen.dart';

class RoutesClass {
  static String getSplashRoute() => RoutesList.splash;

  static List<GetPage> routes = [
    GetPage(name: RoutesList.splash, page: () => HomeScreen()),
  ];
}
