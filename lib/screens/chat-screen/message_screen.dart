import 'package:flutter/material.dart';

class MessagesScreen extends StatefulWidget {
  final List messages;
  const MessagesScreen({super.key, required this.messages});

  @override
  State<MessagesScreen> createState() => _MessagesStateScreen();
}

class _MessagesStateScreen extends State<MessagesScreen> {
  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;

    return ListView.separated(
      itemBuilder: (context, index) {
        return Row(
          mainAxisAlignment: widget.messages[index]['isUserMessage']
              ? MainAxisAlignment.end
              : MainAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.symmetric(vertical: 14, horizontal: 14.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                  bottomRight: Radius.circular(
                      widget.messages[index]['isUserMessage'] ? 0 : 20),
                  topLeft: Radius.circular(
                      widget.messages[index]['isUserMessage'] ? 20 : 0),
                ),
                color: widget.messages[index]['isUserMessage']
                    ? Colors.grey.shade800
                    : Colors.grey.shade900.withOpacity(0.8),
              ),
              constraints: BoxConstraints(maxWidth: w * 2 / 3),
              child: Text(widget.messages[index]['message']),
            ),
          ],
        );
      },
      itemCount: widget.messages.length,
      separatorBuilder: ((context, index) {
        return Padding(
          padding: EdgeInsets.only(top: 10),
        );
      }),
    );
  }
}