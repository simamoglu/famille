import 'package:flutter/material.dart';

import 'package:famille/widgets/custom_widgets/custom_icons.dart';

class LikeBar extends StatelessWidget {
  const LikeBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      color: Theme.of(context).primaryColor,
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              width: 5,
            ),
            IconButton(
              icon: const Icon(
                FamilleIcons.like,
                //thump_up
                color: Colors.white,
              ),
              onPressed: () {},
            ),
            const SizedBox(
              width: 5,
            ),
            IconButton(
              icon: const Icon(
                FamilleIcons.comment,
                color: Colors.white,
              ),
              onPressed: () {},
            ),
            const SizedBox(
              width: 5,
            ),
            IconButton(
              icon: const Icon(
                FamilleIcons.bookmark,
                color: Colors.white,
              ),
              onPressed: () {},
            ),
            const SizedBox(
              width: 5,
            ),
          ],
        ),
      ),
    );
  }
}
