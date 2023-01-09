import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mentasia/constants/image_strings.dart';
import 'package:mentasia/controllers/auth_controllers.dart';
import 'package:mentasia/routing/route_generator.dart';
import 'package:mentasia/screens/login/signup_screen.dart';
import 'package:mentasia/utils/forms_util/reusable_form.dart';
import 'package:mentasia/utils/forms_util/submit_card.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  AuthController authController = AuthController();

  @override
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFF429191),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                width: 120,
                image: AssetImage(tSplashIcon),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: Text(
                  "Welcome back!",
                  style: GoogleFonts.barlowCondensed(
                    fontSize: 25,
                  ),
                ),
              ),
              ReusableForm(
                  labelText: "Email",
                  controller: authController.loginEmailController),
              SizedBox(
                height: 20,
              ),
              ReusableForm(
                labelText: "Password",
                controller: authController.loginPasswordController,
              ),
              SizedBox(
                height: 10,
              ),
              SubmitCard(
                colorButton: Color(0xFF194545),
                buttonText: "Login",
                onTap: () => authController.loginUser(),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account?",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  TextButton(
                    onPressed: () => Get.to(SignupScreen()),
                    child: Text(
                      "Sign up",
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
