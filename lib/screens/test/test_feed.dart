import 'package:flutter/material.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:famille/widgets/custom_widgets/custom_icons.dart';

import 'package:famille/widgets/stories.dart';
import 'package:famille/widgets/custom_widgets/custom_colorful_card.dart';
import 'package:famille/widgets/custom_widgets/custom_card.dart';
import 'package:famille/widgets/post.dart';
import 'package:famille/widgets/like_bar.dart';
import '../chats_list_screen.dart';

class TestFeedScreen extends StatefulWidget {
  const TestFeedScreen({Key? key}) : super(key: key);

  @override
  State<TestFeedScreen> createState() => _TestFeedScreenState();
}

class _TestFeedScreenState extends State<TestFeedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Container(
          height: 25,
          width: 150,
          decoration: const BoxDecoration(
            color: Colors.black12,
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
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
          children: [
            const SizedBox(
              height: 15,
            ),
            CustomColorfulCard(
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        const CircleAvatar(
                          radius: 30,
                          backgroundColor: Colors.black12,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Container(
                          height: 15,
                          width: 50,
                          decoration: const BoxDecoration(
                            color: Colors.black12,
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: [
                        const CircleAvatar(
                          radius: 30,
                          backgroundColor: Colors.black12,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Container(
                          height: 15,
                          width: 50,
                          decoration: const BoxDecoration(
                            color: Colors.black12,
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: [
                        const CircleAvatar(
                          radius: 30,
                          backgroundColor: Colors.black12,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Container(
                          height: 15,
                          width: 50,
                          decoration: const BoxDecoration(
                            color: Colors.black12,
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: [
                        const CircleAvatar(
                          radius: 30,
                          backgroundColor: Colors.black12,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Container(
                          height: 15,
                          width: 50,
                          decoration: const BoxDecoration(
                            color: Colors.black12,
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: [
                        const CircleAvatar(
                          radius: 30,
                          backgroundColor: Colors.black12,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Container(
                          height: 15,
                          width: 50,
                          decoration: const BoxDecoration(
                            color: Colors.black12,
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Stack(
              alignment: Alignment.center,
              clipBehavior: Clip.none,
              children: [
                CustomCard(
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const CircleAvatar(
                            radius: 20,
                            backgroundColor: Colors.black12,
                          ),
                          Container(
                            height: 25,
                            width: 100,
                            decoration: const BoxDecoration(
                              color: Colors.black12,
                              borderRadius: BorderRadius.all(
                                Radius.circular(20),
                              ),
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.more_vert_outlined,
                              color: Theme.of(context).primaryColor,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      ClipRRect(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(20),
                        ),
                        child: Container(
                          height: 300,
                          width: double.infinity,
                          decoration: const BoxDecoration(
                            color: Colors.black12,
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 15,
                              width: 500,
                              decoration: const BoxDecoration(
                                color: Colors.black12,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(20),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                              height: 15,
                              width: 100,
                              decoration: const BoxDecoration(
                                color: Colors.black12,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(20),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                    ],
                  ),
                ),
                Positioned(
                  bottom: -20,
                  child: LikeBar(),
                ),
              ],
            ),
            const SizedBox(
              height: 35,
            ),
          ],
        ),
      ),
    );
  }
}
