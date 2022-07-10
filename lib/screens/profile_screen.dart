import 'package:flutter/material.dart';

import './settings_screen.dart';
import './bookmarks_screen.dart';
import '../widgets/about_me.dart';
import '../widgets/post.dart';
import '../widgets/comments.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Hesabım',
          style: Theme.of(context).appBarTheme.titleTextStyle,
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const BookmarksScreen(),
              ),
            );
          },
          icon: const Icon(
            Icons.bookmarks_outlined,
            color: Colors.green,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SettingsScreen(),
                ),
              );
            },
            icon: const Icon(
              Icons.settings_outlined,
              color: Colors.green,
            ),
          ),
          const SizedBox(
            width: 5,
          ),
        ],
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
      ),
      backgroundColor: Theme.of(context).backgroundColor,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: const [
            SizedBox(
              height: 15,
            ),
            AboutMe(),
            SizedBox(
              height: 10,
            ),
            CircleAvatar(
              radius: 10,
              backgroundColor: Colors.white,
            ),
            SizedBox(
              height: 10,
            ),
            Post(),
            SizedBox(
              height: 10,
            ),
            Comments(),
            SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
    );
  }
}
