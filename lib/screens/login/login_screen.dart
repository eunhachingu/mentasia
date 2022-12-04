import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mentasia/controllers/auth_controllers.dart';
import 'package:mentasia/routing/route_generator.dart';
import 'package:mentasia/screens/login/signup_screen.dart';
import 'package:mentasia/utils/reusable_form.dart';
import 'package:mentasia/utils/submit_card.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  AuthController authController = AuthController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Log in"),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 20),
            ReusableForm(
                labelText: "Email",
                controller: authController.loginEmailController),
            SizedBox(
              height: 20,
            ),
            ReusableForm(
                labelText: "Password",
                controller: authController.loginPasswordController),
            SizedBox(
              height: 10,
            ),
            SubmitCard(
              buttonText: "Login",
              onTap: () => authController.loginUser(),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have an account?"),
                TextButton(
                  onPressed: () => Get.to(SignupScreen()),
                  child: Text("Sign up"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
