import 'package:flutter/material.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Activity {
  String name;
  Icon avatar;
  int changeXP;
  Color color;

  Activity({
    required this.avatar,
    required this.changeXP,
    required this.name,
    required this.color,
  });
}

List<Activity> myActivitys = [
  Activity(
    avatar: Icon(
      TablerIcons.pokeball,
    ),
    changeXP: 35,
    name: "Musculação",
    color: Colors.green.shade100,
  ),
  Activity(
    avatar: Icon(
      FontAwesomeIcons.running,
    ),
    changeXP: 25,
    name: "Caminhada matinal",
    color: Colors.green.shade100,
  ),
  Activity(
    avatar: Icon(
      FontAwesomeIcons.running,
    ),
    changeXP: 15,
    name: "Caminhada matinal",
    color: Colors.green.shade100,
  ),
  Activity(
    avatar: Icon(
      FontAwesomeIcons.walking,
    ),
    changeXP: 15,
    name: "Cardio",
    color: Colors.green.shade100,
  ),
];
