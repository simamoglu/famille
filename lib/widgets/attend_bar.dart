import 'package:flutter/material.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:famille/custom_icons.dart';

class AttendBar extends StatelessWidget {
  const AttendBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.all(
          Radius.circular(50),
        ),
      ),
      height: 50,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          InkWell(
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
                const SizedBox(
                  width: 10,
                ),
              ],
            ),
            onTap: () {},
          ),
          const VerticalDivider(
            color: Colors.white,
            thickness: 2,
            width: 1,
          ),
          InkWell(
            child: Row(
              children: [
                const SizedBox(
                  width: 10,
                ),
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
        ],
      ),
    );
  }
}
