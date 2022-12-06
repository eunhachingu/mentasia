import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mentasia/constants/image_strings.dart';
import 'package:mentasia/screens/settings/settings_screen.dart';
import 'package:mentasia/utils/submit_card.dart';

import '../../../utils/account_card.dart';

class PersonalAccountScreen extends StatefulWidget {
  const PersonalAccountScreen({super.key});

  @override
  State<PersonalAccountScreen> createState() => _PersonalAccountScreenState();
}

class _PersonalAccountScreenState extends State<PersonalAccountScreen> {
  final _nameController = TextEditingController();
  final _usernameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Personal & Account Information
            Padding(
              padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 30.0),
              child: Text(
                "Personal & Account Information",
                style: Theme.of(context).textTheme.displayLarge,
              ),
            ),

            // TextField
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  color: Colors.white,
                  padding: const EdgeInsets.all(20),
                  width: double.infinity,
                  child: Column(
                    children: [
                      AccountCard(
                        controller: _nameController,
                        hintText: "Sample X. Name",
                        labelText: "Name:",
                      ),
                      AccountCard(
                        controller: _usernameController,
                        hintText: "Sample Username",
                        labelText: "Username:",
                      ),
                      AccountCard(
                        controller: _emailController,
                        hintText: "sample99@email.com",
                        labelText: "Email:",
                      ),
                      AccountCard(
                        controller: _passwordController,
                        hintText: "password",
                        labelText: "Password:",
                      ),
                      SubmitCard(
                        buttonText: "Save",
                        onTap: () => Get.to(
                          SettingsScreen(),
                        ),
                        colorButton: Colors.black,
                        colorText: Colors.white,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
