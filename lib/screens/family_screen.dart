import 'package:flutter/material.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:famille/custom_icons.dart';

import 'activities_screen.dart';
import 'todo_list_screen.dart';
import 'shopping_list_screen.dart';
import 'extended_family_screen.dart';
import 'shared_albums.dart';

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
                  builder: (context) => const SharedAlbumsScreen(),
                ),
              );
            },
            icon: Icon(
              FamilleIcons.add,
              color: Theme.of(context).primaryColor,
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ExtendedFamilyScreen(),
                  ),
                );
              },
              icon: Icon(
                FamilleIcons.contacts,
                size: 20,
                color: Theme.of(context).primaryColor,
              ),
            ),
            const SizedBox(
              width: 5,
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
                text: AppLocalizations.of(context).todo,
              ),
              Tab(
                text: AppLocalizations.of(context).shopping,
              ),
            ],
          ),
          backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
        ),
        body: const TabBarView(
          physics: BouncingScrollPhysics(),
          children: [
            ActivitiesScreen(),
            ToDoListScreen(),
            ShoppingListScreen(),
          ],
        ),
      ),
    );
  }
}
