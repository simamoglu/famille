import 'package:flutter/material.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:famille/widgets/custom_widgets/custom_icons.dart';

import 'package:famille/widgets/custom_widgets/custom_card.dart';
import 'package:famille/widgets/attend_bar.dart';
import '../activity_details_screen.dart';

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
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Piknik',
                          style: Theme.of(context).textTheme.headline1,
                        ),
                        IconButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const ActivityDetailsScreen(),
                              ),
                            );
                          },
                          icon: Icon(
                            FamilleIcons.info,
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
                      ],
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            CircleAvatar(
                              backgroundColor: Theme.of(context).primaryColor,
                              child: const Icon(
                                FamilleIcons.user,
                                color: Colors.white,
                              ),
                            ),
                            const Text('8 kişi'),
                          ],
                        ),
                        Column(
                          children: [
                            CircleAvatar(
                              backgroundColor: Theme.of(context).primaryColor,
                              child: const Icon(
                                FamilleIcons.location,
                                color: Colors.white,
                              ),
                            ),
                            const Text('Darıca Sahil'),
                          ],
                        ),
                        Column(
                          children: [
                            CircleAvatar(
                              backgroundColor: Theme.of(context).primaryColor,
                              child: const Icon(
                                FamilleIcons.calendar,
                                color: Colors.white,
                              ),
                            ),
                            const Text('20 Temmuz'),
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
