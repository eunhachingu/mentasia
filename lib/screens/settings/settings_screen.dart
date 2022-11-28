import 'package:flutter/material.dart';
import 'package:mentasia/src/common_widgets/settings_button.dart';
import 'package:mentasia/src/constants/image_strings.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    child: const Image(
                      image: AssetImage(tCancel),
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
                        const Text("Account Name"),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text("Contact Number"),
                      ],
                    ),
                  ],
                ),

                // Account Settings
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20),
                  child: Text("Account Settings"),
                ),

                const SettingsButton(
                  textLabel: "Personal & Account Information",
                  imageString: tPersonalInfo,
                ),

                const SizedBox(
                  height: 10,
                ),

                const SettingsButton(
                  textLabel: "Notification",
                  imageString: tNotification,
                ),

                const SizedBox(
                  height: 10,
                ),

                // Support
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20),
                  child: Text("Support"),
                ),

                const SettingsButton(
                  textLabel: "How Mentasia Works",
                  imageString: tLogo,
                ),

                const SizedBox(
                  height: 10,
                ),

                const SettingsButton(
                  textLabel: "About Us",
                  imageString: tAboutUs,
                ),

                const SizedBox(
                  height: 10,
                ),

                const SettingsButton(
                  textLabel: "Help and Feedback",
                  imageString: tHelp,
                ),

                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20),
                  child: Text("Legal"),
                ),

                const SizedBox(
                  height: 10,
                ),

                const SettingsButton(
                  textLabel: "Terms of Service",
                  imageString: tTermsandService,
                ),
              ],
            );
          }),
        ),
      ),
    );
  }
}
