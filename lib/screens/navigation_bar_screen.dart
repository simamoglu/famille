import 'package:flutter/material.dart';

import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

import 'feed_screen.dart';
import 'search_screen.dart';
import 'family_screen.dart';
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
    const FamilyScreen(),
    const ProfileScreen(),
  ];
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _pages[_selectedIndex],
      bottomNavigationBar: SalomonBottomBar(
        unselectedItemColor: Colors.black,
        margin: const EdgeInsets.all(10),
        curve: Curves.ease,
        currentIndex: _selectedIndex,
        onTap: (index) => setState(() => _selectedIndex = index),
        items: [
          /// Home
          SalomonBottomBarItem(
            icon: const Icon(
              Icons.home_outlined,
            ),
            title: const Text(
              'Ana Sayfa',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontFamily: 'Nunito',
              ),
            ),
            selectedColor: Colors.green,
          ),

          /// Likes
          SalomonBottomBarItem(
            icon: const Icon(
              Icons.search_outlined,
            ),
            title: const Text(
              'Ara',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontFamily: 'Nunito',
              ),
            ),
            selectedColor: Colors.green,
          ),

          /// Search
          SalomonBottomBarItem(
            icon: const Icon(
              Icons.group_outlined,
            ),
            title: const Text(
              'Aile',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontFamily: 'Nunito',
              ),
            ),
            selectedColor: Colors.green,
          ),

          /// Profile
          SalomonBottomBarItem(
            icon: const Icon(
              Icons.person_outline,
            ),
            title: const Text(
              'Ben',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontFamily: 'Nunito',
              ),
            ),
            selectedColor: Colors.green,
          ),
        ],
      ),
    );
  }
}
