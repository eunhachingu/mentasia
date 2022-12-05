import 'package:flutter/material.dart';

import '../../../utils/notification_card.dart';

class NotificationsScreen extends StatefulWidget {
  const NotificationsScreen({super.key});

  @override
  State<NotificationsScreen> createState() => _NotificationsScreenState();
}

class _NotificationsScreenState extends State<NotificationsScreen> {
  final List _notificationsList = [
    ["Notifications", true],
    ["Sounds", false],
    ["Vibrations", false],
  ];

  powerSwitchChanged(bool value, index) {
    setState(() {
      _notificationsList[index][1] = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Column(
          children: [
            Center(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 20.0),
                child: Text(
                  "Notifications",
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  color: Colors.grey[300],
                  padding: const EdgeInsets.all(20),
                  width: double.infinity,
                  height: 500,
                  child: ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: 3,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            NotificationCard(
                                labelText: _notificationsList[index][0],
                                isPowerOn: _notificationsList[index][1],
                                onChanged: (value) =>
                                    powerSwitchChanged(value, index)),
                          ],
                        );
                      }),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
