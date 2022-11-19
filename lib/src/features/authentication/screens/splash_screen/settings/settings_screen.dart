import 'package:flutter/material.dart';
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
                    child: Image(
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
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: OutlinedButton.icon(
                    icon: const Image(image: AssetImage(tPersonalInfo)),
                    label: const Text("Personal & Account Information"),
                    style: OutlinedButton.styleFrom(
                      alignment: Alignment.centerLeft,
                      minimumSize: const Size.fromHeight(48),
                    ),
                    onPressed: () {},
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: OutlinedButton.icon(
                    icon: const Image(image: AssetImage(tPersonalInfo)),
                    label: const Text("Notification"),
                    style: OutlinedButton.styleFrom(
                      alignment: Alignment.centerLeft,
                      minimumSize: const Size.fromHeight(48),
                    ),
                    onPressed: () {},
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: OutlinedButton.icon(
                    icon: const Image(image: AssetImage(tPersonalInfo)),
                    label: const Text("Language"),
                    style: OutlinedButton.styleFrom(
                      alignment: Alignment.centerLeft,
                      minimumSize: const Size.fromHeight(48),
                    ),
                    onPressed: () {},
                  ),
                ),

                // Support
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20),
                  child: Text("Support"),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: OutlinedButton.icon(
                    icon: const Image(image: AssetImage(tPersonalInfo)),
                    label: const Text("Language"),
                    style: OutlinedButton.styleFrom(
                      alignment: Alignment.centerLeft,
                      minimumSize: const Size.fromHeight(48),
                    ),
                    onPressed: () {},
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: OutlinedButton.icon(
                    icon: const Image(image: AssetImage(tPersonalInfo)),
                    label: const Text("How Mentasia Works"),
                    style: OutlinedButton.styleFrom(
                      alignment: Alignment.centerLeft,
                      minimumSize: const Size.fromHeight(48),
                    ),
                    onPressed: () {},
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: OutlinedButton.icon(
                    icon: const Image(image: AssetImage(tPersonalInfo)),
                    label: const Text("About Us"),
                    style: OutlinedButton.styleFrom(
                      alignment: Alignment.centerLeft,
                      minimumSize: const Size.fromHeight(48),
                    ),
                    onPressed: () {},
                  ),
                ),

                // Legal
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20),
                  child: Text("Help and Feedback"),
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20.0,
                  ),
                  child: OutlinedButton.icon(
                    icon: const Image(image: AssetImage(tPersonalInfo)),
                    label: const Text("Terms of Service"),
                    style: OutlinedButton.styleFrom(
                      alignment: Alignment.centerLeft,
                      minimumSize: const Size.fromHeight(48),
                    ),
                    onPressed: () {},
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
              ],
            );
          }),
        ),
      ),
    );
  }
}
