import 'package:flutter/material.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:famille/widgets/custom_widgets/custom_icons.dart';

import 'package:famille/widgets/custom_widgets/custom_card.dart';

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
        leading: IconButton(
          icon: const Icon(
            FamilleIcons.angleleft,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
      ),
      backgroundColor: Theme.of(context).backgroundColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(
            height: 15,
          ),
          CustomCard(
            Row(
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
          const SizedBox(
            height: 10,
          ),
          CustomCard(
            Column(
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
