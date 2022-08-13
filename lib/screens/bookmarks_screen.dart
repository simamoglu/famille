import 'package:flutter/material.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:famille/widgets/custom_widgets/custom_icons.dart';

class BookmarksScreen extends StatelessWidget {
  const BookmarksScreen({Key? key}) : super(key: key);

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
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
        title: Text(
          AppLocalizations.of(context).bookmarks,
          style: Theme.of(context).appBarTheme.titleTextStyle,
        ),
        actions: [
          PopupMenuButton(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(15),
              ),
            ),
            icon: Icon(
              FamilleIcons.filter,
              color: Theme.of(context).primaryColor,
            ),
            itemBuilder: (context) {
              return [
                PopupMenuItem(
                  value: 'alphabetic',
                  child: Row(
                    children: [
                      Icon(
                        Icons.sort_by_alpha_outlined,
                        color: Theme.of(context).primaryColor,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        AppLocalizations.of(context).alphabetical,
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                    ],
                  ),
                ),
                PopupMenuItem(
                  value: 'date',
                  child: Row(
                    children: [
                      Icon(
                        Icons.history_outlined,
                        color: Theme.of(context).primaryColor,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        AppLocalizations.of(context).byDate,
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                    ],
                  ),
                ),
              ];
            },
            onSelected: (value) {
              if (value == 'alphabetic') {
              } else if (value == 'date') {}
            },
          ),
          const SizedBox(
            width: 5,
          ),
        ],
      ),
      body: const Center(
        child: Text('placeholder'),
      ),
    );
  }
}
