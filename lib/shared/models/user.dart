import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class User {
  String name;
  Icon avatar;
  int changeXP;
  Color color;

  User(
    this.avatar,
    this.changeXP,
    this.name,
    this.color,
  );
}

List<User> myUsers = [
  User(
    Icon(
      FontAwesomeIcons.userCircle,
    ),
    3000,
    "Você",
    Colors.green.shade100,
  ),
  User(
    Icon(
      FontAwesomeIcons.userTie,
    ),
    2500,
    "Daniel",
    Colors.green.shade100,
  ),
  User(
    Icon(
      FontAwesomeIcons.userNurse,
    ),
    2000,
    "Maria B",
    Colors.green.shade100,
  ),
  User(
    Icon(
      FontAwesomeIcons.userSecret,
    ),
    1500,
    "Enzo",
    Colors.green.shade100,
  ),
  User(
    Icon(
      FontAwesomeIcons.userAstronaut,
    ),
    1000,
    "João A",
    Colors.green.shade100,
  ),
  User(
    Icon(
      FontAwesomeIcons.userAlt,
    ),
    550,
    "Cláudia",
    Colors.green.shade100,
  ),
  User(
    Icon(
      FontAwesomeIcons.userGraduate,
    ),
    350,
    "Maria A",
    Colors.green.shade100,
  ),
  User(
    Icon(
      FontAwesomeIcons.userNinja,
    ),
    300,
    "João B",
    Colors.green.shade100,
  ),
  User(
    Icon(
      FontAwesomeIcons.userMd,
    ),
    300,
    "Embla",
    Colors.green.shade100,
  ),
];
