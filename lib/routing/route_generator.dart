import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mentasia/screens/settings/account_settings/notifications_screen.dart';
import 'package:mentasia/screens/settings/account_settings/personal_account_screen.dart';
import 'package:mentasia/screens/settings/legal/terms_of_service_screen.dart';

import '../constants/routes_strings.dart';
import '../screens/chat_screen.dart';
import '../screens/home_screen.dart';
import '../screens/login/login_screen.dart';
import '../screens/login/signup_screen.dart';
import '../screens/settings/settings_screen.dart';
import '../screens/settings/support/about_us_screen.dart';
import '../screens/settings/support/help_feedback_screen.dart';
import '../screens/settings/support/mentasia_works_screen.dart';
import '../screens/splash_screen/splash_screen.dart';

class RoutesClass {
  static String getSplashRoute() => RoutesList.splash;
  static String getHomeRoute() => RoutesList.homeScreen;
  static String getChatRoute() => RoutesList.chatScreen;
  static String getLoginRoute() => RoutesList.loginScreen;
  static String getSignupRoute() => RoutesList.signupScreen;
  static String getSettingsRoute() => RoutesList.settingsScreen;
  static String getPersonalInfoRoute() => RoutesList.personalInformationScreen;
  static String getNotificationsRoute() => RoutesList.notifications;
  static String getTermsAndServicesRoute() => RoutesList.termsOfService;
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
      name: RoutesList.loginScreen,
      page: () => const LoginScreen(),
    ),
    GetPage(
      name: RoutesList.signupScreen,
      page: () => const SignupScreen(),
    ),

    GetPage(
        name: RoutesList.settingsScreen, page: () => const SettingsScreen()),
    GetPage(
        name: RoutesList.personalInformationScreen,
        page: () => const PersonalAccountScreen()),
    GetPage(
        name: RoutesList.notifications,
        page: () => const NotificationsScreen()),
    GetPage(
        name: RoutesList.termsOfService,
        page: () => const TermsOfServiceScreen()),
    GetPage(name: RoutesList.aboutUsScreen, page: () => const AboutUsScreen()),
    GetPage(
        name: RoutesList.helpFeedbackScreen,
        page: () => const HelpFeedbackScreen()),
    GetPage(
        name: RoutesList.mentasiaWorksScreen,
        page: () => const MentasiaWorksScreen()),
  ];
}
