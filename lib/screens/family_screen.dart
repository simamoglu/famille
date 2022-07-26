import 'package:flutter/material.dart';

import 'activities_screen.dart';
import 'todo_list_screen.dart';
import 'shopping_list_screen.dart';

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
            'Aile',
            style: Theme.of(context).appBarTheme.titleTextStyle,
          ),
          bottom: const TabBar(
            indicatorSize: TabBarIndicatorSize.label,
            indicatorColor: Colors.green,
            labelColor: Colors.green,
            unselectedLabelColor: Colors.black,
            unselectedLabelStyle: TextStyle(
              color: Colors.green,
              fontWeight: FontWeight.normal,
              fontSize: 16,
              fontFamily: 'Nunito',
            ),
            labelStyle: TextStyle(
              color: Colors.green,
              fontWeight: FontWeight.bold,
              fontSize: 16,
              fontFamily: 'Nunito',
            ),
            tabs: [
              Tab(
                text: 'Etkinlikler',
              ),
              Tab(
                text: 'Listeler',
              ),
              Tab(
                text: 'Albümler',
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
