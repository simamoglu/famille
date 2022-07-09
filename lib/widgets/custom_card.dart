import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final Widget cardChild;
  const CustomCard(this.cardChild, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(15),
      elevation: 1,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: cardChild,
      ),
    );
  }
}
