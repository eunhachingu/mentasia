import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mentasia/main.dart';
import 'package:mentasia/models/models.dart';
import 'package:mentasia/widgets/avatar.dart';
import 'package:mentasia/widgets/glowing_action_button.dart';
import 'package:mentasia/widgets/icon_buttons.dart';

class ChatScreen extends StatelessWidget {
  static Route route(MessageData data) => MaterialPageRoute(
        builder: (context) => ChatScreen(messageData: data),
      );

  final MessageData messageData;
  const ChatScreen({
    super.key,
    required this.messageData,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: Theme.of(context).iconTheme,
        centerTitle: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leadingWidth: 54,
        leading: Align(
          alignment: Alignment.centerRight,
          child: IconBackground(
            icon: CupertinoIcons.back,
            onTap: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        title: _AppBarTitle(
          messageData: messageData,
        ),
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: Center(
              child: IconBorder(
                icon: CupertinoIcons.video_camera_solid,
                onTap: () {},
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: Center(
              child: IconBorder(
                icon: CupertinoIcons.phone_solid,
                onTap: () {},
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: _DemoMessageList(),
          ),
          _ActionBar(),
        ],
      ),
    );
  }
}

class _DemoMessageList extends StatelessWidget {
  const _DemoMessageList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: ListView(
        children: [
          _DateLabel(label: "Yesterday"),
          _MessageTile(
              message: "Hi, Lucy! How's your day going?",
              messageDate: "12:01pm"),
          _MessageOwnTile(
              message: "You know how it goes", messageDate: "12:02pm"),
          _MessageTile(
              message: "Do you want Starbucks?", messageDate: "12:02pm"),
          _MessageOwnTile(message: "Would be awesome!", messageDate: "12:02pm"),
          _MessageTile(message: "Coming up!", messageDate: "12:03pm"),
          _MessageOwnTile(message: "YAYYY!!!", messageDate: "12:03pm"),
        ],
      ),
    );
  }
}

class _AppBarTitle extends StatelessWidget {
  final MessageData messageData;
  const _AppBarTitle({
    super.key,
    required this.messageData,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Avatar.small(url: messageData.profilePicture),
        SizedBox(
          width: 16,
        ),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                messageData.senderName,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontSize: 14, color: Colors.black87),
              ),
              SizedBox(
                height: 2,
              ),
              Text(
                "Online now",
                style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _MessageTile extends StatelessWidget {
  final String message;
  final String messageDate;
  const _MessageTile(
      {super.key, required this.message, required this.messageDate});

  static const _borderRadius = 26.0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 4.0),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(_borderRadius),
                  topRight: Radius.circular(_borderRadius),
                  bottomRight: Radius.circular(_borderRadius),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 20.0),
                child: Text(message),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 8.0),
              child: Text(
                messageDate,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _MessageOwnTile extends StatelessWidget {
  final String message;
  final String messageDate;
  const _MessageOwnTile(
      {super.key, required this.message, required this.messageDate});

  static const _borderRadius = 26.0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 4.0),
      child: Align(
        alignment: Alignment.centerRight,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(_borderRadius),
                  bottomLeft: Radius.circular(_borderRadius),
                  bottomRight: Radius.circular(_borderRadius),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 20.0),
                child: Text(message),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 8.0),
              child: Text(
                messageDate,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _DateLabel extends StatelessWidget {
  final String label;
  const _DateLabel({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 32.0),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.black12,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 4.0, horizontal: 12.0),
            child: Text(
              label,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
                color: Colors.grey.shade700,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _ActionBar extends StatelessWidget {
  const _ActionBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: true,
      top: false,
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              border: Border(
                right: BorderSide(
                  width: 2,
                  color: Colors.grey,
                ),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Icon(
                CupertinoIcons.camera_fill,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 16.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Type something...",
                  border: InputBorder.none,
                ),
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 12.0, right: 24.0),
            child: GlowingActionButton(
              color: Colors.greenAccent,
              icon: Icons.send_rounded,
              onPressed: () {
                print("TODO: send a message");
              },
            ),
          ),
        ],
      ),
    );
  }
}
