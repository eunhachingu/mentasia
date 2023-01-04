import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:mentasia/api/helpers.dart';
import 'package:mentasia/widgets/avatar.dart';

import '../../models/story_data.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: _Stories(),
    );
  }
}

class _Stories extends StatelessWidget {
  const _Stories({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: Colors.blueGrey.shade200,
      child: SizedBox(
        height: 134,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding:
                  const EdgeInsets.only(left: 16.0, top: 8.0, bottom: 16.0),
              child: Text(
                "Stories",
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 15,
                  color: Colors.grey[600],
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  final faker = Faker();
                  return SizedBox(
                    width: 60,
                    child: StoryCard(
                      storyData: StoryData(
                        name: faker.person.name(),
                        url: Helpers.randomPictureUrl(),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class StoryCard extends StatelessWidget {
  final StoryData storyData;
  const StoryCard({super.key, required this.storyData});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Avatar.medium(url: storyData.url),
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(top: 16.0),
            child: Text(
              storyData.name,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 11,
                letterSpacing: 0.3,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
