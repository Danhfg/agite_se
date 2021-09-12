import 'package:agite_se/shared/models/event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class EventPage extends StatefulWidget {
  const EventPage({Key? key}) : super(key: key);

  @override
  _EventPageState createState() => _EventPageState();
}

class _EventPageState extends State<EventPage> {
  final _formKey = GlobalKey<FormState>();
  var _avatar = 'corrida';
  var _icons = [
    'corrida',
    'futebol',
    'basquete',
    'vôlei',
    'bicicleta',
    'tênis',
    'natação',
    'pokemon go'
  ];
  Event newEvent = new Event(
      avatar: Icon(
        FontAwesomeIcons.running,
      ),
      changeXP: 0,
      name: "",
      color: Colors.green.shade100);

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
                  "Cadastrar Evento em Grupo",
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
              Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: size.width * 0.8,
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Nome do Evento:",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      width: size.width * 0.8,
                      child: TextFormField(
                        autofocus: true,
                        keyboardType: TextInputType.emailAddress,
                        onChanged: (String event) {
                          newEvent.name = event;
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
                      padding: EdgeInsets.only(top: 10),
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Local:",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      width: size.width * 0.8,
                      child: TextFormField(
                        obscureText: true,
                        onChanged: (String password) {},
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
                      padding: EdgeInsets.only(top: 10),
                      alignment: Alignment.centerLeft,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Miniatura: ",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          DropdownButton<String>(
                            items: _icons.map((String dropDownStringItem) {
                              return DropdownMenuItem<String>(
                                value: dropDownStringItem,
                                child: Text(dropDownStringItem),
                              );
                            }).toList(),
                            icon: Icon(newEvent.avatar.icon),
                            onChanged: (String? novoItemSelecionado) {
                              _dropDownItemSelected(novoItemSelecionado);
                              setState(() {
                                switch (novoItemSelecionado) {
                                  case 'corrida':
                                    newEvent.avatar = Icon(
                                      FontAwesomeIcons.running,
                                    );
                                    break;
                                  case 'futebol':
                                    newEvent.avatar = Icon(
                                      Icons.sports_soccer,
                                    );
                                    break;
                                  case 'basquete':
                                    newEvent.avatar = Icon(
                                      TablerIcons.ball_basketball,
                                    );
                                    break;
                                  case 'vôlei':
                                    newEvent.avatar = Icon(
                                      TablerIcons.ball_volleyball,
                                    );
                                    break;
                                  case 'bicicleta':
                                    newEvent.avatar = Icon(
                                      Icons.bike_scooter,
                                    );
                                    break;
                                  case 'tênis':
                                    newEvent.avatar = Icon(
                                      TablerIcons.ball_tennis,
                                    );
                                    break;
                                  case 'natação':
                                    newEvent.avatar = Icon(
                                      TablerIcons.swimming,
                                    );
                                    break;
                                  case 'pokemon go':
                                    newEvent.avatar = Icon(
                                      TablerIcons.pokeball,
                                    );
                                    break;
                                  default:
                                    newEvent.avatar = Icon(
                                      FontAwesomeIcons.running,
                                    );
                                }
                              });
                            },
                            value: _avatar,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: size.width * 0.8,
                      padding: EdgeInsets.only(top: 10),
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Data:",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      width: size.width * 0.8,
                      child: InputDatePickerFormField(
                        fieldLabelText: "Selecione a data",
                        firstDate: DateTime.now(),
                        lastDate: DateTime(DateTime.now().year + 1),
                        onDateSaved: (DateTime dateTime) {},
                        onDateSubmitted: (DateTime dateTime) {},
                        errorFormatText: "Formato Inválido",
                      ),
                    ),
                    Container(
                      width: size.width * 0.8,
                      padding: EdgeInsets.only(top: 10),
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Duração:",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      width: size.width * 0.8,
                      padding: EdgeInsets.only(
                        bottom: 5,
                      ),
                      child: TextFormField(
                        autofocus: true,
                        keyboardType: TextInputType.number,
                        onChanged: (String durations) {
                          setState(
                            () {
                              newEvent.changeXP = int.parse(durations) ~/ 2;
                            },
                          );
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
                      padding: EdgeInsets.only(top: 10),
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Quantidade de Pessoas:",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      width: size.width * 0.8,
                      padding: EdgeInsets.only(
                        bottom: 5,
                      ),
                      child: TextFormField(
                        autofocus: true,
                        keyboardType: TextInputType.number,
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
                            Navigator.pushNamed(context, '/base');
                            SingletonTwo.instance.myEvents.add(newEvent);
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text(
                                    'Evento cadastrada com sucesso efeituado com sucesso!'),
                              ),
                            );
                          }
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "     Submeter",
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
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void _dropDownItemSelected(String? novoItemSelecionado) {
    setState(() {
      this._avatar = novoItemSelecionado.toString();
    });
  }
}
