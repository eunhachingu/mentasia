import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constants/image_strings.dart';
import '../routing/route_generator.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: Padding(
            padding: const EdgeInsets.all(10.0),
            child: InkWell(
                onTap: () => Get.toNamed(RoutesClass.getSettingsRoute()),
                child: const Image(
                  image: AssetImage(tTabIcon),
                )),
          ),
        ),
        body: Column(
          children: [],
        ),
      ),
    );
  }
}
