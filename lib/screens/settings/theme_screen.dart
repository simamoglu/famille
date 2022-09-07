import 'package:flutter/material.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:famille/widgets/custom_widgets/custom_icons.dart';

import 'package:famille/widgets/change_theme_button.dart';
import 'package:famille/widgets/custom_widgets/custom_card.dart';

class ThemeScreen extends StatelessWidget {
  const ThemeScreen({Key? key}) : super(key: key);

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
        title: Text(AppLocalizations.of(context).theme),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 15,
          ),
          CustomCard(
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Tema Ayarları',
                  style: Theme.of(context).textTheme.headline1,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Tema rengini ayarla.',
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                    const ChangeThemeButton(),
                  ],
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
                Text(
                  'Mesaj Ayarları',
                  style: Theme.of(context).textTheme.headline1,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Arka plan için fotoğraf seç.',
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        FamilleIcons.picture,
                      ),
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
