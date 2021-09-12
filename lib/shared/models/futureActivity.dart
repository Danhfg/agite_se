import 'package:flutter/material.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FutureActivity {
  String name;
  Icon avatar;
  int changeXP;
  Color color;

  FutureActivity({
    required this.avatar,
    required this.changeXP,
    required this.name,
    required this.color,
  });
}

class SingletonThree {
  List<FutureActivity> myFutureActivitys = [
    FutureActivity(
      avatar: Icon(
        TablerIcons.pokeball,
      ),
      changeXP: 35,
      name: "Pokemon GO",
      color: Colors.green.shade100,
    ),
    FutureActivity(
      avatar: Icon(
        FontAwesomeIcons.running,
      ),
      changeXP: 25,
      name: "Calistenia",
      color: Colors.green.shade100,
    ),
    FutureActivity(
      avatar: Icon(
        FontAwesomeIcons.walking,
      ),
      changeXP: 15,
      name: "Caminhada matinal",
      color: Colors.green.shade100,
    ),
    FutureActivity(
      avatar: Icon(
        TablerIcons.ball_tennis,
      ),
      changeXP: 15,
      name: "Tênis",
      color: Colors.green.shade100,
    ),
  ];

  SingletonThree._privateConstructor();

  static final SingletonThree instance = SingletonThree._privateConstructor();
}

List<FutureActivity> myFutureActivitys =
    SingletonThree.instance.myFutureActivitys;
