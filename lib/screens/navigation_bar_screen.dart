import 'package:flutter/material.dart';

import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:famille/custom_icons.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:famille/widgets/providers/theme_provider.dart';
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
      backgroundColor: Theme.of(context).backgroundColor,
      body: _pages[_selectedIndex],
      bottomNavigationBar: SalomonBottomBar(
        unselectedItemColor: Theme.of(context).textTheme.bodyText1!.color,
        margin: const EdgeInsets.all(10),
        curve: Curves.ease,
        currentIndex: _selectedIndex,
        onTap: (index) => setState(() => _selectedIndex = index),
        items: [
          /// Home
          SalomonBottomBarItem(
            icon: const Icon(
              FamilleIcons.home,
              size: 20,
            ),
            title: Text(
              AppLocalizations.of(context).homePage,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontFamily: 'Nunito',
              ),
            ),
            selectedColor: Theme.of(context).iconTheme.color,
          ),

          /// Likes
          SalomonBottomBarItem(
            icon: const Icon(
              FamilleIcons.search,
              size: 20,
            ),
            title: Text(
              AppLocalizations.of(context).search,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontFamily: 'Nunito',
              ),
            ),
            selectedColor: Theme.of(context).iconTheme.color,
          ),

          /// Search
          SalomonBottomBarItem(
            icon: const Icon(
              FamilleIcons.family,
              size: 20,
            ),
            title: Text(
              AppLocalizations.of(context).family,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontFamily: 'Nunito',
              ),
            ),
            selectedColor: Theme.of(context).iconTheme.color,
          ),

          /// Profile
          SalomonBottomBarItem(
            icon: const Icon(
              FamilleIcons.user,
              size: 20,
            ),
            title: Text(
              AppLocalizations.of(context).me,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontFamily: 'Nunito',
              ),
            ),
            selectedColor: Theme.of(context).iconTheme.color,
          ),
        ],
      ),
    );
  }
}
