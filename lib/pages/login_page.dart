import 'dart:ui';

import 'package:agite_se/shared/models/signin.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  SignIn signIn = new SignIn("", "");

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(
          top: 0,
        ),
        color: Colors.white,
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "ENTRAR",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Align(
                child: new Container(
                  // width: size.width * 0.35,
                  margin: EdgeInsets.all(10),
                  width: size.width * 0.4,
                  height: size.height * 0.2,
                  // color: Colors.red,
                  decoration: new BoxDecoration(
                    color: Colors.orange,
                    shape: BoxShape.circle,
                    image: new DecorationImage(
                      image: new AssetImage(
                        "assets/images/logo.png",
                      ),
                    ),
                  ),
                  alignment: Alignment.center,
                ),
              ),
              Container(
                width: size.width * 0.8,
                child: TextFormField(
                  autofocus: true,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    icon: Icon(
                      Icons.person,
                      // color: Colors.orangeAccent,
                    ),
                    hintText: "Seu email",
                  ),
                  onChanged: (String email) {
                    signIn.email = email;
                  },
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Campo não pode ser vazio!';
                    }
                    return null;
                  },
                ),
              ),
              Container(
                width: size.width * 0.8,
                child: TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    // border: InputBorder.none,
                    hintText: "Password",
                    icon: Icon(
                      Icons.lock,
                      // color: Colors.orangeAccent,
                    ),
                    suffixIcon: Icon(
                      Icons.visibility,
                      // color: Colors.orangeAccent,
                    ),
                  ),
                  onChanged: (String password) {
                    signIn.password = password;
                  },
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Campo não pode ser vazio!';
                    }
                    return null;
                  },
                ),
              ),
              Container(
                width: size.width * 0.8,
                height: 40,
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "Recuperar senha",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black54),
                  ),
                ),
              ),
              Container(
                width: size.width * 0.8,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(5),
                  ),
                  gradient: LinearGradient(
                    colors: [
                      Colors.orangeAccent.shade700,
                      Colors.orangeAccent,
                    ],
                  ),
                ),
                child: TextButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      if (signIn.email == "teste@gmail.com" &&
                          signIn.password == "password") {
                        Navigator.pushNamed(context, '/base');
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                              content: Text('Login efeituado com sucesso')),
                        );
                      } else {
                        Navigator.pushNamed(context, '/login');
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('Usuário ou senha inválidos!'),
                          ),
                        );
                      }
                    }
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "     Entrar",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      Container(
                        child: Icon(
                          Icons.login,
                          color: Colors.white,
                        ),
                        padding: EdgeInsets.only(
                          right: 10,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: size.height * 0.03,
              ),
              Container(
                width: size.width * 0.8,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(5),
                  ),
                  color: Color.fromARGB(255, 66, 126, 245),
                ),
                child: TextButton(
                  onPressed: () => {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "     Entrar com Facebook",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      Container(
                        child: Icon(
                          Icons.facebook,
                          color: Colors.white,
                        ),
                        padding: EdgeInsets.only(
                          right: 10,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              // TextFieldContainer(
              //   child: TextField(
              //     decoration: InputDecoration(
              //       icon: Icon(
              //         Icons.person,
              //       ),
              //       hintText: "Seu email",
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}

class TextFieldContainer extends StatelessWidget {
  final Widget child;
  const TextFieldContainer({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      width: size.width * 0.8,
      decoration: BoxDecoration(
        color: Colors.deepOrangeAccent.shade100,
        borderRadius: BorderRadius.circular(30),
      ),
      child: child,
    );
  }
}
