import 'package:flutter/material.dart';
import 'package:mentasia/controllers/auth.dart';
import 'package:mentasia/screens/wrapper/home_screen.dart';

class ContactsPage extends StatefulWidget {
  const ContactsPage({super.key});

  @override
  State<ContactsPage> createState() => _ContactsPageState();
}

class _ContactsPageState extends State<ContactsPage> {
  void logout() async {
    await Auth().logout();
    Navigator.pushNamed(context, HomeScreen.route);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: logout,
          child: Text("Logout"),
        ),
      ),
    );
  }
}
