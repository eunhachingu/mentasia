import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mentasia/constants/colors.dart';
import 'package:mentasia/constants/image_strings.dart';
import 'package:mentasia/screens/settings/settings_screen.dart';
import 'package:mentasia/utils/forms_util/reusable_form.dart';
import 'package:mentasia/utils/forms_util/submit_card.dart';

class PersonalAccountScreen extends StatefulWidget {
  static String route = "personalScreen";
  const PersonalAccountScreen({super.key});

  @override
  State<PersonalAccountScreen> createState() => _PersonalAccountScreenState();
}

class _PersonalAccountScreenState extends State<PersonalAccountScreen> {
  final TextEditingController _usernameController = TextEditingController();

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
              child: Center(
                child: Text(
                  "Personal & Account Information",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),

            // TextField
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ReusableForm(
                        controller: _usernameController,
                        labelText: "Username:",
                        obscureText: false,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      SubmitCard(
                        buttonText: "Save",
                        onTap: () => Navigator.pop(context),
                        colorButton: tPrimaryColor,
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
