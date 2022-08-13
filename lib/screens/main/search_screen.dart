import 'package:flutter/material.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:famille/widgets/custom_widgets/custom_icons.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          AppLocalizations.of(context).search,
          style: Theme.of(context).appBarTheme.titleTextStyle,
        ),
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
      ),
      backgroundColor: Theme.of(context).backgroundColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(
              top: 10.0,
              left: 15.0,
              right: 15.0,
              bottom: 10.0,
            ),
            decoration: BoxDecoration(
              color: Theme.of(context).secondaryHeaderColor,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(20),
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(30),
              ),
            ),
            padding: const EdgeInsets.all(8.0),
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Row(
                children: [
                  const Expanded(
                    child: TextField(
                      minLines: 1,
                      maxLines: 5,
                      decoration: InputDecoration.collapsed(
                        hintText: 'Bir kişiyi arayarak bul',
                      ),
                    ),
                  ),
                  IconButton(
                    color: Theme.of(context).primaryColor,
                    icon: Icon(
                      FamilleIcons.search,
                      color: Theme.of(context).primaryColor,
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(
                Radius.circular(20),
              ),
              color: Theme.of(context).secondaryHeaderColor,
            ),
            margin: const EdgeInsets.all(15),
            padding: const EdgeInsets.all(20),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      FamilleIcons.history,
                      color: Theme.of(context).primaryColor,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      AppLocalizations.of(context).searchHistory,
                      style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const Divider(),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      '@moira_esin',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                    Icon(
                      FamilleIcons.cross,
                      size: 15,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                const Divider(),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      '@akraba',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                    Icon(
                      FamilleIcons.cross,
                      size: 15,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
