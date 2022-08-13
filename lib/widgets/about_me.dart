import 'package:flutter/material.dart';

import 'package:famille/widgets/custom_widgets/custom_icons.dart';

import './custom_widgets/custom_colorful_card.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomColorfulCard(
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
              children: [
                const CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage("assets/images/pp.jpg"),
                ),
                const SizedBox(
                  width: 15,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Sertan Hakkı',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    Text(
                      'İmamoğlu',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 10,
            ),
            child: Text(
              'Bilişim dersinden projem var, onun için bir mobil uygulama geliştiriyorum ve tasarlıyorum.',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: const [
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Icon(
                        FamilleIcons.apps,
                        color: Colors.green,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      '1 Gönderi',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: const [
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Icon(
                        FamilleIcons.user,
                        color: Colors.green,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      '48',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: const [
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Icon(
                        FamilleIcons.location,
                        color: Colors.green,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Gebze',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
