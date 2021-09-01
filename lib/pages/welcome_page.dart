import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    // Widget bigCircle = new Container(
    //   width: size.width * 0.3,
    //   height: size.height * 0.4,
    //   decoration: new BoxDecoration(
    //     color: Colors.orange,
    //     shape: BoxShape.circle,
    //   ),
    //   child: Image.asset(
    //     "assets/icons/fitness-vector-free-icon-set-28.png",
    //   ),
    // );

    return Scaffold(
      body: Container(
        child: new Stack(
          children: <Widget>[
            new Positioned(
              child: Container(
                width: size.width * 0.55,
                height: size.height * 0.45,
                decoration: new BoxDecoration(
                  color: Colors.orange,
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                    colors: [
                      Colors.deepOrange.shade700,
                      Colors.orange.shade300
                    ],
                  ),
                ),
              ),
              top: -size.height * 0.25,
              left: -size.width * 0.3,
            ),
            // new Positioned(
            //   child: Container(
            //     height: size.height * 0.45,
            //     width: size.width * 0.8,
            //     decoration: new BoxDecoration(
            //       color: Colors.orange,
            //       // border: Border.all(color: Colors.black, width: 0.0),
            //       borderRadius: new BorderRadius.all(
            //           Radius.elliptical(size.width * 0.8, size.height * 0.45)),
            //     ),
            //     child: Text(''),
            //   ),
            //   top: -size.height * 0.25,
            //   left: -size.width * 0.5,
            // ),
            new Positioned(
              child: Container(
                width: size.width * 0.5,
                height: size.height * 0.5,
                decoration: new BoxDecoration(
                  color: Colors.orange,
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                    colors: [
                      Colors.deepOrange.shade600,
                      Colors.orange.shade200
                    ],
                  ),
                ),
              ),
              top: size.height * 0.8,
              left: -size.width * 0.25,
            ),
            // new Positioned(
            //   child: Container(
            //     height: size.height * 0.4,
            //     width: size.width * 0.6,
            //     decoration: new BoxDecoration(
            //       color: Colors.orange,
            //       // border: Border.all(color: Colors.black, width: 0.0),
            //       borderRadius: new BorderRadius.all(
            //           Radius.elliptical(size.width * 0.6, size.height * 0.4)),
            //     ),
            //     child: Text(''),
            //   ),
            //   top: size.height * 0.8,
            //   left: -size.width * 0.4,
            // ),

            new Positioned(
              child: Container(
                width: size.width * 0.3,
                height: size.height * 0.4,
                decoration: new BoxDecoration(
                  color: Colors.orange,
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                    colors: [
                      Colors.orange.shade400,
                      Colors.deepOrange.shade100
                    ],
                  ),
                ),
              ),
              top: size.height * 0.3,
              left: size.width * 0.9,
            ),

            //   Container(
            //     height: size.height * 0.2,
            //     width: size.width * 0.5,
            //     decoration: new BoxDecoration(
            //       color: Colors.orange,
            //       // border: Border.all(color: Colors.black, width: 0.0),
            //       borderRadius: new BorderRadius.all(
            //           Radius.elliptical(size.width * 0.5, size.height * 0.2)),
            //     ),
            //     child: Text(''),
            //   ),
            //   top: size.height * 0.4,
            //   left: size.width * 0.85,
            // ),
            new Container(
              padding: EdgeInsets.only(
                top: size.height * 0.1,
                left: size.width * 0.25,
                right: size.width * 0.25,
              ),
              child: ListView(
                children: <Widget>[
                  Center(
                    child: Text(
                      "BEM VINDO AO AGITE-SE!",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.05,
                  ),
                  Align(
                    child: new Container(
                      // width: size.width * 0.35,
                      width: size.width * 0.4,
                      height: size.height * 0.2,
                      // color: Colors.red,
                      decoration: new BoxDecoration(
                        color: Colors.orange,
                        shape: BoxShape.circle,
                        gradient: LinearGradient(
                          colors: [
                            Colors.orange.shade300,
                            Colors.orange.shade200,
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                        image: new DecorationImage(
                          image: new AssetImage(
                            "assets/icons/fitness-vector-free-icon-set-28.png",
                          ),
                        ),
                      ),
                      // child: new Stack(
                      //   children: <Widget>[
                      //     Center(
                      //       child: Image.asset(
                      //         "assets/icons/fitness-vector-free-icon-set-28.png",
                      //       ),
                      //     )
                      //   ],
                      // ),
                    ),
                    alignment: Alignment.centerRight,
                  ),
                  Align(
                    child: new Container(
                      // width: size.width * 0.35,
                      width: size.width * 0.4,
                      height: size.height * 0.2,
                      // color: Colors.red,
                      decoration: new BoxDecoration(
                        color: Colors.orange,
                        shape: BoxShape.circle,
                        gradient: LinearGradient(
                          colors: [
                            Colors.orange.shade300,
                            Colors.orange.shade200,
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                        image: new DecorationImage(
                          image: new AssetImage(
                            "assets/icons/fitness-vector-free-icon-set-26.png",
                          ),
                        ),
                      ),
                      // child: new Stack(
                      //   children: <Widget>[
                      //     Center(
                      //       child: Image.asset(
                      //         "assets/icons/fitness-vector-free-icon-set-28.png",
                      //       ),
                      //     )
                      //   ],
                      // ),
                    ),
                    alignment: Alignment.centerLeft,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 5),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.deepOrange,
                          padding: EdgeInsets.all(0),
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, '/login');
                        },
                        child: Text(
                          "ENTRAR",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 5),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.deepOrange.shade100,
                          padding: EdgeInsets.all(0),
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, '/signup');
                        },
                        child: Text(
                          "CADASTRAR",
                          style: TextStyle(
                            color: Colors.black54,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
