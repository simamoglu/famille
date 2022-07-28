import 'package:flutter/material.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:famille/custom_icons.dart';

class AttendBar extends StatelessWidget {
  const AttendBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
            borderRadius: const BorderRadius.all(
              Radius.circular(20),
            ),
          ),
          height: 50,
          child: InkWell(
            child: Row(
              children: [
                const Icon(
                  FamilleIcons.cross,
                  size: 16,
                  color: Colors.white,
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  AppLocalizations.of(context).notAttending,
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            onTap: () {},
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
            borderRadius: const BorderRadius.all(
              Radius.circular(20),
            ),
          ),
          height: 50,
          child: InkWell(
            child: Row(
              children: [
                const Icon(
                  FamilleIcons.check,
                  size: 16,
                  color: Colors.white,
                ),
                const SizedBox(
                  width: 15,
                ),
                Text(
                  AppLocalizations.of(context).attending,
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            onTap: () {},
          ),
        ),
      ],
    );
  }
}
