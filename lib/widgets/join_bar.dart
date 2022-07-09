import 'package:flutter/material.dart';

class JoinBar extends StatelessWidget {
  const JoinBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.all(
          Radius.circular(50),
        ),
      ),
      height: 50,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          InkWell(
            child: Row(
              children: const [
                Icon(
                  Icons.close_rounded,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  'Katılmıyorum',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
              ],
            ),
            onTap: () {},
          ),
          const VerticalDivider(
            color: Colors.white,
            thickness: 2,
            width: 1,
          ),
          InkWell(
            child: Row(
              children: const [
                SizedBox(
                  width: 5,
                ),
                Icon(
                  Icons.done_rounded,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  'Katılıyorum',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
