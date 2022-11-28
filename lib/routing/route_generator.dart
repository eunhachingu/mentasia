import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mentasia/src/constants/routes_strings.dart';
import 'package:mentasia/src/features/authentication/screens/home_screen.dart';
import 'package:mentasia/src/features/authentication/screens/chat_screen.dart';
import 'package:mentasia/src/features/authentication/screens/settings/settings_screen.dart';
import 'package:mentasia/src/features/authentication/screens/settings/support/about_us_screen.dart';
import 'package:mentasia/src/features/authentication/screens/settings/support/help_feedback_screen.dart';
import 'package:mentasia/src/features/authentication/screens/settings/support/mentasia_works_screen.dart';
import 'package:mentasia/src/features/authentication/screens/splash_screen/splash_screen.dart';

class RoutesClass {
  static String getSplashRoute() => RoutesList.splash;
  static String getHomeRoute() => RoutesList.homeScreen;
  static String getChatRoute() => RoutesList.chatScreen;
  static String getSettingsRoute() => RoutesList.settingsScreen;
  static String getAboutUsRoute() => RoutesList.aboutUsScreen;
  static String getHelpFeedBackRoute() => RoutesList.helpFeedbackScreen;
  static String getMentasiaWorksRoute() => RoutesList.mentasiaWorksScreen;

  static List<GetPage> routes = [
    GetPage(name: RoutesList.splash, page: () => SplashScreen()),
    GetPage(
      name: RoutesList.homeScreen,
      page: () => const HomeScreen(),
    ),
    GetPage(
      name: RoutesList.chatScreen,
      page: () => const ChatScreen(),
    ),
    GetPage(
        name: RoutesList.settingsScreen, page: () => const SettingsScreen()),
    GetPage(name: RoutesList.aboutUsScreen, page: () => const AboutUsScreen()),
    GetPage(
        name: RoutesList.helpFeedbackScreen,
        page: () => const HelpFeedbackScreen()),
    GetPage(
        name: RoutesList.mentasiaWorksScreen,
        page: () => const MentasiaWorksScreen()),
  ];
}
