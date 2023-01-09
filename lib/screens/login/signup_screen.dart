import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mentasia/controllers/auth_controllers.dart';
import 'package:mentasia/routing/route_generator.dart';
import 'package:mentasia/screens/login/login_screen.dart';
import 'package:mentasia/utils/forms_util/reusable_form.dart';
import 'package:mentasia/utils/forms_util/submit_card.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  AuthController authController = AuthController();

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
              Text("Hi! Let us set you an account"),
              SizedBox(height: 20),
              ReusableForm(
                  labelText: "Email",
                  controller: authController.emailController),
              SizedBox(
                height: 20,
              ),
              ReusableForm(
                  labelText: "Password",
                  controller: authController.passwordController),
              SizedBox(
                height: 20,
              ),
              SubmitCard(
                colorButton: Color(0xFF194545),
                buttonText: "Sign Up",
                onTap: () => authController.createAccount(),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already have an acount?"),
                  TextButton(
                    onPressed: () => Get.to(
                      LoginScreen(),
                    ),
                    child: Text(
                      "Login",
                      style: TextStyle(
                        color: Colors.black87,
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
