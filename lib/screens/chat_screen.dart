import 'package:bubble/bubble.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:intl/intl.dart';
import 'package:mentasia/screens/settings/settings_screen.dart';

import '../constants/image_strings.dart';
import '../models/message.dart';
import '../routing/route_generator.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  List<Message> messages = [
    Message(
      text: "Yes Sure!",
      date: DateTime.now().subtract(
        Duration(minutes: 1),
      ),
      isSentByMe: false,
    )
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: Padding(
            padding: const EdgeInsets.all(10.0),
            child: InkWell(
                onTap: () => Get.to(
                      SettingsScreen(),
                    ),
                child: const Image(
                  image: AssetImage(tTabIcon),
                )),
          ),
        ),
        body: Column(
          children: [
            Expanded(
              child: GroupedListView<Message, DateTime>(
                padding: EdgeInsets.all(8),
                reverse: true,
                order: GroupedListOrder.DESC,
                useStickyGroupSeparators: true,
                floatingHeader: true,
                elements: messages,
                groupBy: (message) => DateTime(
                  message.date.year,
                  message.date.month,
                  message.date.day,
                ),
                groupHeaderBuilder: (Message message) => SizedBox(
                  height: 40,
                  child: Center(
                    child: Card(
                      color: Theme.of(context).primaryColor,
                      child: Padding(
                        padding: EdgeInsets.all(8),
                        child: Text(
                          DateFormat.yMMMd().format(message.date),
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
                itemBuilder: (context, Message message) => Align(
                  alignment: message.isSentByMe
                      ? Alignment.centerRight
                      : Alignment.centerLeft,
                  child: Card(
                    elevation: 8,
                    child: Padding(
                      padding: EdgeInsets.all(12),
                      child: Text(message.text),
                    ),
                  ),
                ),
              ),
            ),
            Bubble(
              child: TextField(
                style: Theme.of(context).textTheme.bodySmall,
                onSubmitted: (text) {
                  final message = Message(
                    text: text,
                    date: DateTime.now(),
                    isSentByMe: true,
                  );

                  setState(() {
                    messages.add(message);
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
