import 'package:flutter/material.dart';

import 'package:famille/custom_icons.dart';

import 'package:famille/widgets/custom_card.dart';
import '../widgets/attend_bar.dart';

class ActivitiesScreen extends StatelessWidget {
  const ActivitiesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const SizedBox(
          height: 15,
        ),
        Stack(
          alignment: Alignment.center,
          clipBehavior: Clip.none,
          children: [
            CustomCard(
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 5,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                    ),
                    child: Text(
                      'Piknik',
                      style: Theme.of(context).textTheme.headline1,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                    ),
                    child: Text(
                      'Sahilde iki aile beraber piknik yapacağız. Gelecek olanlar "Katılıyorum"u işaretlesin lütfen!',
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: const [
                            Icon(
                              FamilleIcons.user,
                              color: Colors.green,
                            ),
                            Text('8 kişi'),
                          ],
                        ),
                        Column(
                          children: const [
                            Icon(
                              FamilleIcons.location,
                              color: Colors.green,
                            ),
                            Text('Darıca Sahil'),
                          ],
                        ),
                        Column(
                          children: const [
                            Icon(
                              FamilleIcons.calendar,
                              color: Colors.green,
                            ),
                            Text('20 Temmuz'),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
            const Positioned(
              bottom: -20,
              child: AttendBar(),
            ),
          ],
        ),
      ],
    );
  }
}
