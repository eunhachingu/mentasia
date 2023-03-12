import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:mentasia/screens/chat/chat_main.dart';
import 'package:mentasia/screens/auth_screen/login_screen.dart';
import 'package:mentasia/screens/auth_screen/signup_screen.dart';
import 'package:mentasia/screens/settings/account_settings/personal_account_screen.dart';
import 'package:mentasia/screens/settings/legal/terms_of_service_screen.dart';
import 'package:mentasia/screens/settings/settings_screen.dart';
import 'package:mentasia/screens/settings/support/about_us_screen.dart';
import 'package:mentasia/screens/settings/support/help_feedback_screen.dart';
import 'package:mentasia/screens/settings/support/mentasia_works_screen.dart';
import 'package:mentasia/screens/wrapper/home_screen.dart';
import 'package:mentasia/screens/splash_screen/splash_screen.dart';

import '../screens/wrapper/wrapper.dart';

getRoutes() {
  return {
    SplashScreen.route: (context) => SplashScreen(),
    HomeScreen.route: (context) => HomeScreen(),
    ChatMain.route: (context) => ChatMain(),
    LoginScreen.route: (context) => LoginScreen(),
    SignupScreen.route: (context) => SignupScreen(),
    Wrapper.route: (context) => Wrapper(),
    SettingsScreen.route: (context) => SettingsScreen(),
    PersonalAccountScreen.route: (context) => PersonalAccountScreen(),
    MentasiaWorksScreen.route: (context) => MentasiaWorksScreen(),
    AboutUsScreen.route: (context) => AboutUsScreen(),
    HelpFeedbackScreen.route: (context) => HelpFeedbackScreen(),
    TermsOfServiceScreen.route: (context) => TermsOfServiceScreen(),
  };
}
