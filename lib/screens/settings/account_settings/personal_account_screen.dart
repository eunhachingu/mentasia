import 'package:flutter/material.dart';
import 'package:mentasia/constants/image_strings.dart';

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
          children: [
            // Personal & Account Information
            const Center(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 40.0),
                child: Text("Personal & Account Information"),
              ),
            ),

            // TextField
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  color: Colors.white,
                  padding: const EdgeInsets.all(20),
                  width: double.infinity,
                  height: 500,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AccountCard(
                        controller: _nameController,
                        hintText: "Sample X. Name",
                        labelText: "Name:",
                      ),
                      AccountCard(
                        controller: _usernameController,
                        hintText: "Sample Username",
                        labelText: "Name:",
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
                      Center(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.symmetric(horizontal: 50),
                          ),
                          onPressed: () {},
                          child: Text("Save"),
                        ),
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
