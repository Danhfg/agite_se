import 'package:agite_se/pages/perfil_page.dart';
import 'package:agite_se/pages/ranking_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BasePage extends StatefulWidget {
  const BasePage({Key? key}) : super(key: key);

  @override
  _BasePageState createState() => _BasePageState();
}

class _BasePageState extends State<BasePage> {
  int _selectedItem = 0;

  static const List<Widget> _wigetOptions = <Widget>[
    RankingPage(),
    RankingPage(),
    RankingPage(),
    RankingPage(),
    PerfilPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _wigetOptions.elementAt(_selectedItem),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.orangeAccent[900],
        unselectedItemColor: Colors.orangeAccent,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.running,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              TablerIcons.pokeball,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.home,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.award,
            ),
            label: "Ranking",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.idCard,
            ),
            label: "Histórico",
          ),
        ],
        currentIndex: _selectedItem,
        onTap: (int index) {
          setState(() {
            _selectedItem = index;
          });
        },
      ),
    );
  }
}
