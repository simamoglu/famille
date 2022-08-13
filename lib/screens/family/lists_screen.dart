import 'package:flutter/material.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:famille/widgets/custom_widgets/custom_icons.dart';
import 'package:expandable/expandable.dart';

import 'package:famille/widgets/custom_widgets/custom_card.dart';
import './lists/shopping_list_screen.dart';
import './lists/todo_list_screen.dart';
import './lists/read_list_screen.dart';
import './lists/watch_list_screen.dart';

class ListsScreen extends StatelessWidget {
  const ListsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ExpandableTheme(
      data: ExpandableThemeData(
        iconColor: Theme.of(context).primaryColor,
        useInkWell: true,
        expandIcon: FamilleIcons.angledown,
        collapseIcon: FamilleIcons.angledown,
        iconSize: 8,
      ),
      child: ListView(
        children: [
          const SizedBox(
            height: 15,
          ),
          CustomCard(
            ExpandablePanel(
              header: Text(
                AppLocalizations.of(context).todo,
                style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              collapsed: Text(
                'Show what to do next',
                softWrap: true,
                style: TextStyle(
                  color: Theme.of(context).textTheme.bodyText1!.color,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              expanded: const ToDoListScreen(),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          CustomCard(
            ExpandablePanel(
              header: Text(
                AppLocalizations.of(context).shopping,
                style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              collapsed: Text(
                'Show what to buy',
                softWrap: true,
                style: TextStyle(
                  color: Theme.of(context).textTheme.bodyText1!.color,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              expanded: const ShoppingListScreen(),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          CustomCard(
            ExpandablePanel(
              header: Text(
                AppLocalizations.of(context).readList,
                style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              collapsed: Text(
                'Show what to read together',
                softWrap: true,
                style: TextStyle(
                  color: Theme.of(context).textTheme.bodyText1!.color,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              expanded: const ReadListScreen(),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          CustomCard(
            ExpandablePanel(
              header: Text(
                AppLocalizations.of(context).watchList,
                style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              collapsed: Text(
                'Show what to watch next together',
                softWrap: true,
                style: TextStyle(
                  color: Theme.of(context).textTheme.bodyText1!.color,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              expanded: const WatchListScreen(),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
        ],
      ),
    );
  }
}
