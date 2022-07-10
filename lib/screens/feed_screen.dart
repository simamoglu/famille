import 'package:flutter/material.dart';

import '../widgets/custom_card.dart';
import '../widgets/stories.dart';
import '../widgets/like_bar.dart';
import '../widgets/post.dart';
import '../widgets/comments.dart';
import './chats_list_screen.dart';

class FeedScreen extends StatefulWidget {
  const FeedScreen({Key? key}) : super(key: key);

  @override
  State<FeedScreen> createState() => _FeedScreenState();
}

class _FeedScreenState extends State<FeedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Ağİle',
          style: Theme.of(context).appBarTheme.titleTextStyle,
        ),
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
        leading: PopupMenuButton(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(15),
            ),
          ),
          icon: const Icon(
            Icons.add_circle_outline,
            color: Colors.green,
          ),
          itemBuilder: (context) {
            return [
              PopupMenuItem(
                value: 'camera',
                child: Row(
                  children: [
                    const Icon(
                      Icons.camera_alt_outlined,
                      color: Colors.green,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Kameradan Çek',
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                  ],
                ),
              ),
              PopupMenuItem(
                value: 'gallery',
                child: Row(
                  children: [
                    const Icon(
                      Icons.photo_outlined,
                      color: Colors.green,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Galeriden Seç',
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                  ],
                ),
              ),
            ];
          },
          onSelected: (value) {
            if (value == 'camera') {
            } else if (value == 'gallery') {}
          },
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ChatsListScreen(),
                ),
              );
            },
            icon: const Icon(
              Icons.chat_outlined,
              color: Colors.green,
            ),
          ),
          const SizedBox(
            width: 5,
          )
        ],
      ),
      backgroundColor: Theme.of(context).backgroundColor,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              height: 15,
            ),
            const Stories(),
            const SizedBox(
              height: 15,
            ),
            const Post(),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: const [
                LikeBar(),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Comments(),
            const SizedBox(
              height: 15,
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
              ),
              child: const Divider(
                color: Colors.white,
                thickness: 3,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            CustomCard(
              ClipRRect(
                borderRadius: const BorderRadius.all(
                  Radius.circular(20),
                ),
                child: Image.asset("assets/images/post2.jpg"),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: const [
                LikeBar(),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
    );
  }
}
