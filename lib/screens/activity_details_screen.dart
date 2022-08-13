import 'package:flutter/material.dart';

import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:famille/widgets/custom_widgets/custom_icons.dart';
import 'package:expandable/expandable.dart';

import '../widgets/custom_widgets/custom_card.dart';
import '../widgets/attend_bar.dart';
import '../widgets/custom_widgets/custom_colorful_card.dart';

class ActivityDetailsScreen extends StatefulWidget {
  const ActivityDetailsScreen({Key? key}) : super(key: key);

  @override
  State<ActivityDetailsScreen> createState() => _ActivityDetailsScreenState();
}

class _ActivityDetailsScreenState extends State<ActivityDetailsScreen> {
  late GoogleMapController mapController;

  final LatLng _center = const LatLng(45.521563, -122.677433);

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

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
        elevation: 1,
        centerTitle: true,
        title: Text(
          'Piknik',
          style: Theme.of(context).appBarTheme.titleTextStyle,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              FamilleIcons.edit,
              color: Theme.of(context).primaryColor,
            ),
          ),
          const SizedBox(
            width: 5,
          ),
        ],
      ),
      body: ExpandableTheme(
        data: ExpandableThemeData(
          iconColor: Theme.of(context).primaryColor,
          useInkWell: true,
          expandIcon: FamilleIcons.angledown,
          collapseIcon: FamilleIcons.angledown,
          iconSize: 8,
        ),
        child: ListView(
          children: [
            const SizedBox(
              height: 15,
            ),
            const CustomColorfulCard(
              Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  'Sahilde iki aile beraber piknik yapacağız. Gelecek olanlar "Katılıyorum"u işaretlesin lütfen!',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const AttendBar(),
            const SizedBox(
              height: 10,
            ),
            CustomCard(
              ExpandablePanel(
                header: Text(
                  AppLocalizations.of(context).participants,
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                collapsed: Text(
                  '8 kişi',
                  softWrap: true,
                  style: TextStyle(
                    color: Theme.of(context).textTheme.bodyText1!.color,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                expanded: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        CircleAvatar(
                          radius: 20,
                          backgroundImage: AssetImage("assets/images/pp2.jpg"),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          '@moira_esin',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        CircleAvatar(
                          radius: 20,
                          backgroundImage: AssetImage("assets/images/pp.jpg"),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          '@srtn_immgl',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            CustomCard(
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    AppLocalizations.of(context).location,
                    style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Darıca sahil uzuuuncca bir adres varmış gibi davranın',
                    style: TextStyle(
                      color: Theme.of(context).textTheme.bodyText1!.color,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 300,
                    width: double.infinity,
                    margin: const EdgeInsets.all(5),
                    child: GoogleMap(
                      onMapCreated: _onMapCreated,
                      initialCameraPosition: CameraPosition(
                        target: _center,
                        zoom: 11.0,
                      ),
                    ),
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
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    AppLocalizations.of(context).date,
                    style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '20 Temmuz',
                        style: TextStyle(
                          color: Theme.of(context).textTheme.bodyText1!.color,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: Row(
                          children: [
                            const Icon(
                              FamilleIcons.calendar,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              AppLocalizations.of(context).addtocalendar,
                              style: const TextStyle(
                                fontSize: 16.0,
                                fontFamily: 'Nunito',
                                fontWeight: FontWeight.normal,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              Theme.of(context).primaryColor),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
    );
  }
}
