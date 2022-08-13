import 'package:flutter/material.dart';

import './custom_widgets/custom_colorful_card.dart';

class Stories extends StatelessWidget {
  const Stories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomColorfulCard(
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Column(
              children: const [
                CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage("assets/images/pp.jpg"),
                ),
                Text(
                  '@srtn_immgl',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
            const SizedBox(
              width: 10,
            ),
            Column(
              children: const [
                CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage("assets/images/pp2.jpg"),
                ),
                Text(
                  '@moira_esin',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
            const SizedBox(
              width: 10,
            ),
            Column(
              children: const [
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.grey,
                ),
                Text(
                  '@akraba',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
            const SizedBox(
              width: 10,
            ),
            Column(
              children: const [
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.grey,
                ),
                Text(
                  '@akraba2',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
            const SizedBox(
              width: 10,
            ),
            Column(
              children: const [
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.grey,
                ),
                Text(
                  '@akraba3',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
