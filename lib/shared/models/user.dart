import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class User {
  String name;
  Icon avatar;
  int changeXP;
  Color color;

  User({
    required this.avatar,
    required this.changeXP,
    required this.name,
    required this.color,
  });
}

List<User> myUsers = [
  User(
    avatar: Icon(
      FontAwesomeIcons.userCircle,
    ),
    changeXP: 3000,
    name: "Você",
    color: Colors.green.shade100,
  ),
  User(
    avatar: Icon(
      FontAwesomeIcons.userTie,
    ),
    changeXP: 2500,
    name: "Daniel",
    color: Colors.green.shade100,
  ),
  User(
    avatar: Icon(
      FontAwesomeIcons.userNurse,
    ),
    changeXP: 2000,
    name: "Maria B",
    color: Colors.green.shade100,
  ),
  User(
    avatar: Icon(
      FontAwesomeIcons.userSecret,
    ),
    changeXP: 1500,
    name: "Enzo",
    color: Colors.green.shade100,
  ),
  User(
    avatar: Icon(
      FontAwesomeIcons.userAstronaut,
    ),
    changeXP: 1000,
    name: "João A",
    color: Colors.green.shade100,
  ),
  User(
    avatar: Icon(
      FontAwesomeIcons.userAlt,
    ),
    changeXP: 550,
    name: "Cláudia",
    color: Colors.green.shade100,
  ),
  User(
    avatar: Icon(
      FontAwesomeIcons.userGraduate,
    ),
    changeXP: 350,
    name: "Maria A",
    color: Colors.green.shade100,
  ),
  User(
    avatar: Icon(
      FontAwesomeIcons.userNinja,
    ),
    changeXP: 300,
    name: "João B",
    color: Colors.green.shade100,
  ),
  User(
    avatar: Icon(
      FontAwesomeIcons.userMd,
    ),
    changeXP: 300,
    name: "Embla",
    color: Colors.green.shade100,
  ),
];
