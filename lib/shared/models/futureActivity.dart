import 'package:flutter/material.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FutureActivity {
  String name;
  Icon avatar;
  int changeXP;
  Color color;

  FutureActivity(
    this.avatar,
    this.changeXP,
    this.name,
    this.color,
  );
}

List<FutureActivity> myFutureActivitys = [
  FutureActivity(
    Icon(
      TablerIcons.pokeball,
    ),
    35,
    "Musculação",
    Colors.green.shade100,
  ),
  FutureActivity(
    Icon(
      FontAwesomeIcons.running,
    ),
    25,
    "Calistenia",
    Colors.green.shade100,
  ),
  FutureActivity(
    Icon(
      FontAwesomeIcons.running,
    ),
    15,
    "Caminhada matinal",
    Colors.green.shade100,
  ),
  FutureActivity(
    Icon(
      FontAwesomeIcons.walking,
    ),
    15,
    "Cardio",
    Colors.green.shade100,
  ),
];
