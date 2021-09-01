import 'package:agite_se/pages/base_page.dart';
import 'package:agite_se/pages/login_page.dart';
import 'package:agite_se/pages/signup_page.dart';
import 'package:agite_se/pages/welcome_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Agite-se',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const WelcomePage(),
        '/login': (context) => const LoginPage(),
        '/signup': (context) => const SignupPage(),
        '/base': (context) => const BasePage(),
      },
    );
  }
}
