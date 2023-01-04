import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mentasia/api/helpers.dart';
import 'package:mentasia/screens/chat/calls_page.dart';
import 'package:mentasia/screens/chat/contacts_page.dart';
import 'package:mentasia/screens/chat/notifications_page.dart';
import 'package:mentasia/widgets/avatar.dart';
import 'package:mentasia/widgets/icon_buttons.dart';

import '../../utils/chat_util/navigation_bar_item.dart';
import 'chat_page.dart';

class ChatMain extends StatelessWidget {
  final ValueNotifier<int> pageIndex = ValueNotifier(0);
  final ValueNotifier<String> title = ValueNotifier('Messages');
  ChatMain({super.key});

  final pages = const [
    ChatPage(),
    NotificationsPage(),
    CallsPage(),
    ContactsPage(),
  ];

  final pageTitles = const [
    'Messages',
    'Notifications',
    'Calls',
    'Contacts',
  ];

  @override
  Widget build(BuildContext context) {
    pageIndex.addListener(() {
      print(pageIndex.value);
    });
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: ValueListenableBuilder(
          valueListenable: title,
          builder: (context, value, child) {
            return Text(
              value,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 16),
            );
          },
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 24.0),
            child: Avatar.small(url: Helpers.randomPictureUrl()),
          ),
        ],
        leadingWidth: 54,
        leading: Align(
          alignment: Alignment.centerRight,
          child: IconBackground(
            icon: Icons.search,
            onTap: () {
              print("To do Search");
            },
          ),
        ),
      ),
      body: ValueListenableBuilder(
        valueListenable: pageIndex,
        builder: (context, value, _) {
          return pages[value];
        },
      ),
      bottomNavigationBar: _BottomNavigationBar(
        onItemSelected: _onNavigationItemSelected,
      ),
    );
  }

  void _onNavigationItemSelected(index) {
    title.value = pageTitles[index];
    pageIndex.value = index;
  }
}

class _BottomNavigationBar extends StatefulWidget {
  final ValueChanged<int> onItemSelected;
  const _BottomNavigationBar({
    Key? key,
    required this.onItemSelected,
  }) : super(key: key);

  @override
  State<_BottomNavigationBar> createState() => _BottomNavigationBarState();
}

class _BottomNavigationBarState extends State<_BottomNavigationBar> {
  var selectedIndex = 0;

  void handleItemSelected(int index) {
    setState(() {
      selectedIndex = index;
    });
    widget.onItemSelected(index);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      bottom: true,
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            NavigationBarItem(
              label: 'Messaging',
              icon: CupertinoIcons.bubble_left_bubble_right_fill,
              index: 0,
              isSelected: (selectedIndex == 0),
              onTap: handleItemSelected,
            ),
            NavigationBarItem(
              label: 'Notifications',
              icon: CupertinoIcons.bell_solid,
              index: 1,
              isSelected: (selectedIndex == 1),
              onTap: handleItemSelected,
            ),
            NavigationBarItem(
              label: 'Calls',
              icon: CupertinoIcons.phone_fill,
              index: 2,
              isSelected: (selectedIndex == 2),
              onTap: handleItemSelected,
            ),
            NavigationBarItem(
              label: 'Contacts',
              icon: CupertinoIcons.person_2_fill,
              index: 3,
              isSelected: (selectedIndex == 3),
              onTap: handleItemSelected,
            ),
          ],
        ),
      ),
    );
  }
}
