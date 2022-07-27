import 'package:flutter/material.dart';

import 'package:famille/custom_icons.dart';

import 'package:famille/widgets/custom_card.dart';
import '../widgets/attend_bar.dart';
import 'activity_details_screen.dart';

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
                          icon: const Icon(
                            FamilleIcons.info,
                            color: Colors.green,
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
                          children: const [
                            CircleAvatar(
                              backgroundColor: Colors.green,
                              child: Icon(
                                FamilleIcons.user,
                                color: Colors.white,
                              ),
                            ),
                            Text('8 kişi'),
                          ],
                        ),
                        Column(
                          children: const [
                            CircleAvatar(
                              backgroundColor: Colors.green,
                              child: Icon(
                                FamilleIcons.location,
                                color: Colors.white,
                              ),
                            ),
                            Text('Darıca Sahil'),
                          ],
                        ),
                        Column(
                          children: const [
                            CircleAvatar(
                              backgroundColor: Colors.green,
                              child: Icon(
                                FamilleIcons.calendar,
                                color: Colors.white,
                              ),
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
