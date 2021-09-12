import 'package:flutter/material.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Event {
  String name;
  Icon avatar;
  int changeXP;
  Color color;

  Event({
    required this.avatar,
    required this.changeXP,
    required this.name,
    required this.color,
  });
}

class SingletonTwo {
  List<Event> myEvents = [
    Event(
      avatar: Icon(
        TablerIcons.pokeball,
      ),
      changeXP: 30,
      name: "Pokemon Go",
      color: Colors.green.shade100,
    ),
    Event(
      avatar: Icon(
        FontAwesomeIcons.running,
      ),
      changeXP: 15,
      name: "Corrida em grupo",
      color: Colors.green.shade100,
    ),
    Event(
      avatar: Icon(
        FontAwesomeIcons.running,
      ),
      changeXP: 15,
      name: "Corrida em grupo",
      color: Colors.green.shade100,
    ),
    Event(
      avatar: Icon(
        FontAwesomeIcons.walking,
      ),
      changeXP: 10,
      name: "Caminhada em grupo",
      color: Colors.green.shade100,
    ),
  ];

  SingletonTwo._privateConstructor();

  static final SingletonTwo instance = SingletonTwo._privateConstructor();
}

List<Event> myEvents = SingletonTwo.instance.myEvents;
