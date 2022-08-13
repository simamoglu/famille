import 'package:flutter/material.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:famille/widgets/custom_widgets/custom_icons.dart';

import '../family/activities_screen.dart';
import '../family/lists_screen.dart';
import '../family/games_screen.dart';
import '../family/albums_screen.dart';

class FamilyScreen extends StatefulWidget {
  const FamilyScreen({Key? key}) : super(key: key);

  @override
  State<FamilyScreen> createState() => _FamilyScreenState();
}

class _FamilyScreenState extends State<FamilyScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Theme.of(context).backgroundColor,
        appBar: AppBar(
          elevation: 1,
          centerTitle: true,
          title: Text(
            AppLocalizations.of(context).family,
            style: Theme.of(context).appBarTheme.titleTextStyle,
          ),
          leading: IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const GamesScreen(),
                ),
              );
            },
            icon: Icon(
              FamilleIcons.dice,
              color: Theme.of(context).primaryColor,
            ),
          ),
          actions: [
            PopupMenuButton(
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
                    value: 'activity',
                    child: Row(
                      children: [
                        Icon(
                          FamilleIcons.appsadd,
                          color: Theme.of(context).primaryColor,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          AppLocalizations.of(context).addActivity,
                          style: Theme.of(context).textTheme.bodyText2,
                        ),
                      ],
                    ),
                  ),
                  PopupMenuItem(
                    value: 'list',
                    child: Row(
                      children: [
                        Icon(
                          FamilleIcons.add,
                          color: Theme.of(context).primaryColor,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          AppLocalizations.of(context).addList,
                          style: Theme.of(context).textTheme.bodyText2,
                        ),
                      ],
                    ),
                  ),
                  PopupMenuItem(
                    value: 'album',
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
                          AppLocalizations.of(context).addAlbum,
                          style: Theme.of(context).textTheme.bodyText2,
                        ),
                      ],
                    ),
                  ),
                ];
              },
              onSelected: (value) {
                if (value == 'activity') {
                } else if (value == 'list') {
                } else if (value == 'album') {}
              },
            ),
          ],
          bottom: TabBar(
            indicatorSize: TabBarIndicatorSize.label,
            indicatorColor: Theme.of(context).primaryColor,
            labelColor: Theme.of(context).primaryColor,
            unselectedLabelColor: Theme.of(context).textTheme.bodyText1!.color,
            unselectedLabelStyle: const TextStyle(
              fontWeight: FontWeight.normal,
              fontSize: 16,
              fontFamily: 'Nunito',
            ),
            labelStyle: TextStyle(
              color: Theme.of(context).primaryColor,
              fontWeight: FontWeight.bold,
              fontSize: 16,
              fontFamily: 'Nunito',
            ),
            tabs: [
              Tab(
                text: AppLocalizations.of(context).activities,
              ),
              Tab(
                text: AppLocalizations.of(context).lists,
              ),
              Tab(
                text: AppLocalizations.of(context).albums,
              ),
            ],
          ),
          backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
        ),
        body: const TabBarView(
          physics: BouncingScrollPhysics(),
          children: [
            ActivitiesScreen(),
            ListsScreen(),
            AlbumsScreen(),
          ],
        ),
      ),
    );
  }
}
