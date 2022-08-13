import 'package:flutter/material.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:famille/widgets/custom_widgets/custom_icons.dart';

import 'package:famille/widgets/custom_widgets/custom_card.dart';

class GamesScreen extends StatelessWidget {
  const GamesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            FamilleIcons.angleleft,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
        elevation: 1,
        centerTitle: true,
        title: Text(
          AppLocalizations.of(context).games,
          style: Theme.of(context).appBarTheme.titleTextStyle,
        ),
      ),
      body: GridView.count(
        childAspectRatio: 0.8,
        primary: false,
        padding: const EdgeInsets.all(20),
        mainAxisSpacing: 10,
        crossAxisCount: 2,
        children: [
          CustomCard(
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Icon(
                  FamilleIcons.ballot,
                  size: 50,
                ),
                Text(
                  AppLocalizations.of(context).werewolf,
                  style: Theme.of(context).textTheme.headline1,
                  textAlign: TextAlign.center,
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    FamilleIcons.lock,
                  ),
                ),
              ],
            ),
          ),
          CustomCard(
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Icon(
                  FamilleIcons.dicegame,
                  size: 50,
                ),
                Text(
                  AppLocalizations.of(context).dice,
                  style: Theme.of(context).textTheme.headline1,
                  textAlign: TextAlign.center,
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    FamilleIcons.lock,
                  ),
                ),
              ],
            ),
          ),
          CustomCard(
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Icon(
                  FamilleIcons.playingcards,
                  size: 50,
                ),
                Text(
                  AppLocalizations.of(context).cards,
                  style: Theme.of(context).textTheme.headline1,
                  textAlign: TextAlign.center,
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    FamilleIcons.lock,
                  ),
                ),
              ],
            ),
          ),
          CustomCard(
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Icon(
                  FamilleIcons.chess,
                  size: 50,
                ),
                Text(
                  AppLocalizations.of(context).chess,
                  style: Theme.of(context).textTheme.headline1,
                  textAlign: TextAlign.center,
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    FamilleIcons.lock,
                  ),
                ),
              ],
            ),
          ),
          CustomCard(
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Icon(
                  FamilleIcons.treasurechest,
                  size: 50,
                ),
                Text(
                  AppLocalizations.of(context).treasure,
                  style: Theme.of(context).textTheme.headline1,
                  textAlign: TextAlign.center,
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    FamilleIcons.lock,
                  ),
                ),
              ],
            ),
          ),
          CustomCard(
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Icon(
                  FamilleIcons.dart,
                  size: 50,
                ),
                Text(
                  AppLocalizations.of(context).dart,
                  style: Theme.of(context).textTheme.headline1,
                  textAlign: TextAlign.center,
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    FamilleIcons.lock,
                  ),
                ),
              ],
            ),
          ),
          CustomCard(
            Center(
              child: Text(
                AppLocalizations.of(context).gamesHint,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
