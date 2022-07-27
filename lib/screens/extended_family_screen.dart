import 'package:flutter/material.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:famille/custom_icons.dart';

class ExtendedFamilyScreen extends StatelessWidget {
  const ExtendedFamilyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(
            FamilleIcons.angleleft,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(
          AppLocalizations.of(context).extended,
          style: Theme.of(context).appBarTheme.titleTextStyle,
        ),
      ),
      body: const Center(
        child: Text('denemeee'),
      ),
    );
  }
}
