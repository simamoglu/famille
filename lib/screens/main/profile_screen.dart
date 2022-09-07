import 'package:flutter/material.dart';

import 'package:famille/widgets/custom_widgets/custom_icons.dart';

import '../settings_screen.dart';
import '../bookmarks_screen.dart';
import 'package:famille/widgets/about_me.dart';
import 'package:famille/widgets/post.dart';

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
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(
              FamilleIcons.at,
            ),
            const SizedBox(
              width: 5,
            ),
            Text(
              'srtn_immgl',
              style: Theme.of(context).appBarTheme.titleTextStyle,
            ),
          ],
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
          icon: Icon(
            FamilleIcons.bookmark,
            color: Theme.of(context).primaryColor,
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
            icon: Icon(
              FamilleIcons.settings,
              color: Theme.of(context).primaryColor,
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
            Post(),
            SizedBox(
              height: 25,
            ),
          ],
        ),
      ),
    );
  }
}
