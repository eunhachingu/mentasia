import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:mentasia/src/features/authentication/screens/home_screen.dart';
import 'package:mentasia/src/features/authentication/screens/chat_screen.dart';
import 'package:mentasia/src/features/authentication/screens/splash_screen/splash_screen.dart';
import 'package:mentasia/src/routing/route_generator.dart';
import 'package:mentasia/src/utils/theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      themeMode: ThemeMode.system,
      initialRoute: RoutesClass.getSplashRoute(),
      getPages: RoutesClass.routes,
    );
  }
}
