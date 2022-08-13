import 'package:flutter/cupertino.dart';

class Game {
  final String id;
  final String title;
  final String text;
  final String playerNum;
  final IconData gameIcon;

  const Game({
    required this.id,
    required this.title,
    required this.text,
    required this.playerNum,
    required this.gameIcon,
  });
}
