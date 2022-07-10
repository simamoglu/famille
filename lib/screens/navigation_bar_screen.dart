import 'package:flutter/material.dart';

import 'feed_screen.dart';
import 'search_screen.dart';
import 'activities_screen.dart';
import 'profile_screen.dart';

class NavigationBarScreen extends StatefulWidget {
  const NavigationBarScreen({Key? key}) : super(key: key);

  @override
  State<NavigationBarScreen> createState() => _NavigationBarScreenState();
}

class _NavigationBarScreenState extends State<NavigationBarScreen> {
  final List _pages = [
    const FeedScreen(),
    const SearchScreen(),
    const ActivitiesScreen(),
    const ProfileScreen(),
  ];
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              _selectedIndex == 0 ? Icons.home : Icons.home_outlined,
              size: 30,
            ),
            label: 'Ana Sayfa',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              _selectedIndex == 1 ? Icons.search : Icons.search_outlined,
              size: 30,
            ),
            label: 'Ara',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              _selectedIndex == 2
                  ? Icons.supervised_user_circle
                  : Icons.supervised_user_circle_outlined,
              size: 30,
            ),
            label: 'Aile',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              _selectedIndex == 3
                  ? Icons.account_circle
                  : Icons.account_circle_outlined,
              size: 30,
            ),
            label: 'Ben',
          ),
        ],
        showUnselectedLabels: false,
        unselectedItemColor: Colors.black87,
        selectedItemColor: Colors.green,
        currentIndex: _selectedIndex,
        onTap: (int index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}
