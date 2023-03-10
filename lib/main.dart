import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mentasia/constants/colors.dart';
import 'package:mentasia/firebase_options.dart';
import 'package:mentasia/routing/router.dart';
import 'package:mentasia/screens/wrapper/home_screen.dart';
import 'package:mentasia/screens/splash_screen/splash_screen.dart';
import 'package:mentasia/screens/wrapper/wrapper.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // initializing firebase
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Helvetica",
        scaffoldBackgroundColor: tPrimaryColor,
      ),
      initialRoute: SplashScreen.route,
      routes: getRoutes(),
    );
  }
}
