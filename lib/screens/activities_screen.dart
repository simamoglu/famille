import 'package:flutter/material.dart';

import 'package:famille/widgets/custom_card.dart';
import '../widgets/join_bar.dart';

class ActivitiesScreen extends StatefulWidget {
  const ActivitiesScreen({Key? key}) : super(key: key);

  @override
  State<ActivitiesScreen> createState() => _ActivitiesScreenState();
}

class _ActivitiesScreenState extends State<ActivitiesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Aile ve Etkinlikler',
          style: Theme.of(context).appBarTheme.titleTextStyle,
        ),
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
      ),
      backgroundColor: Theme.of(context).backgroundColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(
            height: 15,
          ),
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
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: const [
                          Icon(
                            Icons.person_outline,
                            color: Colors.green,
                          ),
                          Text('8 kişi'),
                        ],
                      ),
                      Column(
                        children: const [
                          Icon(
                            Icons.location_on_outlined,
                            color: Colors.green,
                          ),
                          Text('Darıca Sahil'),
                        ],
                      ),
                      Column(
                        children: const [
                          Icon(
                            Icons.calendar_month_outlined,
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
          const SizedBox(
            height: 10,
          ),
          const JoinBar(),
        ],
      ),
    );
  }
}
