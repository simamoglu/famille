import 'package:flutter/material.dart';

class CustomProfileCard extends StatelessWidget {
  final Widget cardChild;
  const CustomProfileCard(this.cardChild, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 15),
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      color: Theme.of(context).secondaryHeaderColor,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: cardChild,
      ),
    );
  }
}
