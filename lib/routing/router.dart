import 'package:mentasia/screens/chat/chat_main.dart';
import 'package:mentasia/screens/auth_screen/login_screen.dart';
import 'package:mentasia/screens/auth_screen/signup_screen.dart';
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
  };
}
