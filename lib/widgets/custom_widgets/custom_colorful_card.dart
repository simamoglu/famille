import 'package:flutter/material.dart';

class CustomColorfulCard extends StatelessWidget {
  final Widget cardChild;
  const CustomColorfulCard(this.cardChild, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 15),
      elevation: 1,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: LinearGradient(
            colors: [
              Colors.lightGreen.shade400,
              Colors.green.shade600,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        padding: const EdgeInsets.all(10),
        child: cardChild,
      ),
    );
  }
}
