import 'package:agite_se/shared/models/activity.dart';
import 'package:agite_se/shared/models/event.dart';
import 'package:flutter/material.dart';

class PerfilPage extends StatefulWidget {
  const PerfilPage({Key? key}) : super(key: key);

  @override
  _PerfilPageState createState() => _PerfilPageState();
}

class _PerfilPageState extends State<PerfilPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        physics: ClampingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              SizedBox(
                height: size.height * 0.03,
              ),
              Center(
                child: Text(
                  "Meu Histórico",
                  style: TextStyle(
                    color: Color(0xff00444f),
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                  ),
                ),
              ),
              SizedBox(
                height: size.height * 0.03,
              ),
              Align(
                child: Text(
                  "nível 33",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 16,
                  ),
                ),
                alignment: Alignment.topRight,
              ),
              LinearProgressIndicator(
                value: 0.5,
              ),
              Text(
                "300/600",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                ),
              ),
              SizedBox(
                height: size.height * 0.03,
              ),
              Align(
                child: Text(
                  "Meus eventos:",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 16,
                  ),
                ),
                alignment: Alignment.topLeft,
              ),
              Container(
                padding: const EdgeInsets.all(20.0),
                height: size.height * 0.2,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      ListView.separated(
                        itemCount: myEvents.length,
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        separatorBuilder: (context, index) {
                          return SizedBox(
                            height: size.height * 0.03,
                          );
                        },
                        itemBuilder: (context, index) {
                          return Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        myEvents[index].name,
                                        style: TextStyle(
                                            // color: Color(0xfffcd76b),
                                            fontWeight: FontWeight.w700,
                                            fontSize: 16),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "+" +
                                            myActivitys[index]
                                                .changeXP
                                                .toString() +
                                            " XP",
                                        maxLines: 1,
                                        style: TextStyle(
                                            // color: Color(0xfffcd76b),
                                            fontWeight: FontWeight.w700,
                                            fontSize: 16),
                                      ),
                                    ],
                                  ),
                                ],
                              )
                            ],
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                child: Text(
                  "Minhas atividades:",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 16,
                  ),
                ),
                alignment: Alignment.topLeft,
              ),
              Container(
                padding: const EdgeInsets.all(20.0),
                height: size.height * 0.2,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      ListView.separated(
                        itemCount: myActivitys.length,
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        separatorBuilder: (context, index) {
                          return SizedBox(
                            height: size.height * 0.03,
                          );
                        },
                        itemBuilder: (context, index) {
                          return Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        myActivitys[index].name,
                                        style: TextStyle(
                                            // color: Color(0xfffcd76b),
                                            fontWeight: FontWeight.w700,
                                            fontSize: 16),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "+" +
                                            myActivitys[index]
                                                .changeXP
                                                .toString() +
                                            " XP",
                                        maxLines: 1,
                                        style: TextStyle(
                                            // color: Color(0xfffcd76b),
                                            fontWeight: FontWeight.w700,
                                            fontSize: 16),
                                      ),
                                    ],
                                  ),
                                ],
                              )
                            ],
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                child: Text(
                  "Atividades Futuras:",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 16,
                  ),
                ),
                alignment: Alignment.topLeft,
              ),
              Container(
                padding: const EdgeInsets.all(20.0),
                height: size.height * 0.2,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      ListView.separated(
                        itemCount: myActivitys.length,
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        separatorBuilder: (context, index) {
                          return SizedBox(
                            height: size.height * 0.03,
                          );
                        },
                        itemBuilder: (context, index) {
                          return Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        myActivitys[index].name,
                                        style: TextStyle(
                                            // color: Color(0xfffcd76b),
                                            fontWeight: FontWeight.w700,
                                            fontSize: 16),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "...",
                                        maxLines: 1,
                                        style: TextStyle(
                                            // color: Color(0xfffcd76b),
                                            fontWeight: FontWeight.w700,
                                            fontSize: 16),
                                      ),
                                    ],
                                  ),
                                ],
                              )
                            ],
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
