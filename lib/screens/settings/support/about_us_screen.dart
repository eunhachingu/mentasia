import 'package:flutter/material.dart';

import '../../../constants/image_strings.dart';
import '../../../utils/settings_util/members_widget.dart';

class AboutUsScreen extends StatefulWidget {
  const AboutUsScreen({super.key});

  @override
  State<AboutUsScreen> createState() => _AboutUsScreenState();
}

class _AboutUsScreenState extends State<AboutUsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemCount: 1,
        itemBuilder: (context, index) {
          return Column(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              // About Us
              Center(
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 30.0, vertical: 40.0),
                  child: Text(
                    "About Us",
                    style: Theme.of(context).textTheme.displayLarge,
                  ),
                ),
              ),

              // Image Logo
              const Center(
                child: (Image(
                  height: 240,
                  width: 240,
                  image: AssetImage(tRechaerg),
                )),
              ),

              // Text Description
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 328,
                  height: 160,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  // ignore: prefer_const_constructors
                  child: Text(
                    "\t\t\t\t\t\tReCHAERG is a group of developers formed through a project in their Enterprise Software System Course under Computer Engineering Program at the Polytechnic University of the Philippines. They are formed to create a website that will help people dealing with mental health.",
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ),
              ),

              // Members
              const Center(
                child: Text(
                  "Members",
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              // Serg
              MembersWidget(
                imagePath: tSerg,
                name: "Sergio Angelo A. Casareo",
                description:
                    "Bachelor of Science in Computer Engineering Student Polytecnic University of the Philippines",
              ),
              const SizedBox(
                height: 10,
              ),

              // Kane
              MembersWidget(
                imagePath: tKane,
                name: "Kane Edward Malapo",
                description:
                    "Bachelor of Science in Computer Engineering Student Polytecnic University of the Philippines",
              ),
              const SizedBox(
                height: 10,
              ),
              MembersWidget(
                imagePath: tChoi,
                name: "Edilberto Jr. S. Pajunar",
                description:
                    "Bachelor of Science in Computer Engineering Student Polytecnic University of the Philippines",
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          );
        },
      ),
    );
  }
}
