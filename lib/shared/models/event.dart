import 'package:flutter/material.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Event {
  String name;
  Icon avatar;
  int changeXP;
  Color color;

  Event(
    this.avatar,
    this.changeXP,
    this.name,
    this.color,
  );
}

List<Event> myEvents = [
  Event(
    Icon(
      TablerIcons.pokeball,
    ),
    30,
    "Pokemon Go",
    Colors.green.shade100,
  ),
  Event(
    Icon(
      FontAwesomeIcons.running,
    ),
    15,
    "Corrida em grupo",
    Colors.green.shade100,
  ),
  Event(
    Icon(
      FontAwesomeIcons.running,
    ),
    15,
    "Corrida em grupo",
    Colors.green.shade100,
  ),
  Event(
    Icon(
      FontAwesomeIcons.walking,
    ),
    10,
    "Caminhada em grupo",
    Colors.green.shade100,
  ),
];
