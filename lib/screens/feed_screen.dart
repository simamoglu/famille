import 'package:flutter/material.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:famille/custom_icons.dart';

import '../widgets/stories.dart';
import '../widgets/post.dart';
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
          AppLocalizations.of(context).appTitle,
          style: Theme.of(context).appBarTheme.titleTextStyle,
        ),
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
        leading: PopupMenuButton(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(15),
            ),
          ),
          icon: Icon(
            FamilleIcons.add,
            size: 20,
            color: Theme.of(context).primaryColor,
          ),
          itemBuilder: (context) {
            return [
              PopupMenuItem(
                value: 'camera',
                child: Row(
                  children: [
                    Icon(
                      FamilleIcons.camera,
                      color: Theme.of(context).primaryColor,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      AppLocalizations.of(context).camera,
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                  ],
                ),
              ),
              PopupMenuItem(
                value: 'gallery',
                child: Row(
                  children: [
                    Icon(
                      FamilleIcons.picture,
                      color: Theme.of(context).primaryColor,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      AppLocalizations.of(context).gallery,
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
            icon: Icon(
              FamilleIcons.chats,
              size: 20,
              color: Theme.of(context).primaryColor,
            ),
          ),
          const SizedBox(
            width: 5,
          ),
        ],
      ),
      backgroundColor: Theme.of(context).backgroundColor,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: const [
            SizedBox(
              height: 15,
            ),
            Stories(),
            SizedBox(
              height: 15,
            ),
            Post(),
            SizedBox(
              height: 45,
            ),
            Post(),
            SizedBox(
              height: 35,
            ),
          ],
        ),
      ),
    );
  }
}
