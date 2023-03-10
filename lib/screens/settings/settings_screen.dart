import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mentasia/controllers/auth_controllers.dart';
import 'package:mentasia/screens/settings/account_settings/personal_account_screen.dart';
import 'package:mentasia/screens/settings/legal/terms_of_service_screen.dart';
import 'package:mentasia/screens/settings/support/about_us_screen.dart';
import 'package:mentasia/screens/settings/support/mentasia_works_screen.dart';
import 'package:mentasia/utils/forms_util/submit_card.dart';

import '../../constants/image_strings.dart';
import '../../utils/settings_util/settings_button.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  final String? accountName = FirebaseAuth.instance.currentUser?.email;

  AuthController authController = AuthController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFBFD9D8),
        resizeToAvoidBottomInset: true,
        body: SafeArea(
          child: ListView.builder(
            itemCount: 1,
            itemBuilder: ((context, index) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Back arrow
                  Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 30, vertical: 10),
                      alignment: Alignment.centerRight,
                      child: InkWell(
                        onTap: () => Get.back(),
                        child: const Image(
                          image: AssetImage(tCancel),
                        ),
                      )),

                  // Account Name
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 30.0, top: 10.0),
                        child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.grey,
                              ),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: const Image(
                              image: AssetImage(tProfileIcon),
                            )),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Text(
                            "Account Name: ${accountName}",
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Contact Number:",
                          ),
                        ],
                      ),
                    ],
                  ),

                  // Account Settings
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 30.0, vertical: 20),
                    child: Text(
                      "Account Settings",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),

                  SettingsButton(
                    textLabel: "Personal & Account Information",
                    imageString: tPersonalInfo,
                    onTap: () => Get.to(
                      PersonalAccountScreen(),
                    ),
                  ),

                  const SizedBox(
                    height: 5,
                  ),

                  // SettingsButton(
                  //   textLabel: "Notification",
                  //   imageString: tNotification,
                  //   onTap: () => Get.to(
                  //     NotificationsScreen(),
                  //   ),
                  // ),

                  // Support
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 30.0, vertical: 5),
                    child: Text(
                      "Support",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),

                  SettingsButton(
                    textLabel: "How Mentasia Works",
                    imageString: tLogo,
                    onTap: () => Get.to(
                      MentasiaWorksScreen(),
                    ),
                  ),

                  const SizedBox(
                    height: 5,
                  ),

                  SettingsButton(
                    textLabel: "About Us",
                    imageString: tAboutUs,
                    onTap: () => Get.to(
                      AboutUsScreen(),
                    ),
                  ),

                  const SizedBox(
                    height: 5,
                  ),

                  SettingsButton(
                    textLabel: "Help and Feedback",
                    imageString: tHelp,
                    onTap: () => Get.to(
                      SettingsScreen(),
                    ),
                  ),

                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 30.0, vertical: 5),
                    child: Text(
                      "Legal",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),

                  SettingsButton(
                    textLabel: "Terms of Service",
                    imageString: tTermsandService,
                    onTap: () => Get.to(
                      TermsOfServiceScreen(),
                    ),
                  ),

                  SizedBox(
                    height: 20,
                  ),

                  SubmitCard(
                    buttonText: "Logout",
                    onTap: () => authController.logoutUser(),
                    colorButton: Color(0xFF194545),
                    colorText: Colors.white,
                  ),
                ],
              );
            }),
          ),
        ),
      ),
    );
  }
}
