import 'package:flutter/material.dart';

class LikeBar extends StatelessWidget {
  const LikeBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 15,
      ),
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(50),
          ),
          color: Colors.green),
      padding: const EdgeInsets.all(5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            width: 5,
          ),
          IconButton(
            icon: const Icon(
              Icons.thumb_up,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
          const SizedBox(
            width: 5,
          ),
          IconButton(
            icon: const Icon(
              Icons.thumb_down_outlined,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
          const SizedBox(
            width: 5,
          ),
          IconButton(
            icon: const Icon(
              Icons.comment_outlined,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
          const SizedBox(
            width: 5,
          ),
        ],
      ),
    );
  }
}
