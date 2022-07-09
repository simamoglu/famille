import 'package:flutter/material.dart';

import './custom_card.dart';

class Stories extends StatelessWidget {
  const Stories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Column(
              children: const [
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.green,
                  child: IconButton(
                    onPressed: null,
                    icon: Icon(
                      Icons.add_circle_outline,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                ),
                Text('Hikaye Ekle'),
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
                Text('@moira_esin'),
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
                Text('@akraba'),
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
                Text('@akraba2'),
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
                Text('@akraba3'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
