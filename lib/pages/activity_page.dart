import 'package:agite_se/shared/models/futureActivity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ActivityPage extends StatefulWidget {
  const ActivityPage({Key? key}) : super(key: key);

  @override
  _ActivityPageState createState() => _ActivityPageState();
}

class _ActivityPageState extends State<ActivityPage> {
  final _formKey = GlobalKey<FormState>();
  var _avatar = 'corrida';
  var _icons = [
    'corrida',
    'futebol',
    'basquete',
    'vôlei',
    'bicicleta',
    'tênis',
    'natação'
  ];
  FutureActivity newActivity = new FutureActivity(
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
                  "Cadastrar Atividade Física",
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
                        "Nome da Atividade",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      width: size.width * 0.8,
                      child: TextFormField(
                        autofocus: true,
                        keyboardType: TextInputType.emailAddress,
                        onChanged: (String name) {
                          setState(() {
                            newActivity.name = name;
                          });
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
                        "Local",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      width: size.width * 0.8,
                      child: TextFormField(
                        onChanged: (String local) {},
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
                            icon: Icon(newActivity.avatar.icon),
                            onChanged: (String? novoItemSelecionado) {
                              _dropDownItemSelected(novoItemSelecionado);
                              setState(() {
                                // this._avatar = novoItemSelecionado.toString();

                                // 'running',
                                // 'futebol',
                                // 'basquete',
                                // 'volei',
                                // 'musculação',
                                // 'tênis',
                                // 'natação'
                                switch (novoItemSelecionado) {
                                  case 'corrida':
                                    newActivity.avatar = Icon(
                                      FontAwesomeIcons.running,
                                    );
                                    break;
                                  case 'futebol':
                                    newActivity.avatar = Icon(
                                      Icons.sports_soccer,
                                    );
                                    break;
                                  case 'basquete':
                                    newActivity.avatar = Icon(
                                      TablerIcons.ball_basketball,
                                    );
                                    break;
                                  case 'vôlei':
                                    newActivity.avatar = Icon(
                                      TablerIcons.ball_volleyball,
                                    );
                                    break;
                                  case 'bicicleta':
                                    newActivity.avatar = Icon(
                                      Icons.bike_scooter,
                                    );
                                    break;
                                  case 'tênis':
                                    newActivity.avatar = Icon(
                                      TablerIcons.ball_tennis,
                                    );
                                    break;
                                  case 'natação':
                                    newActivity.avatar = Icon(
                                      TablerIcons.swimming,
                                    );
                                    break;
                                  default:
                                    newActivity.avatar = Icon(
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
                        "Data",
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
                        "Duração: ",
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
                          setState(() {
                            newActivity.changeXP = int.parse(durations) ~/ 2;
                          });
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
                            SingletonThree.instance.myFutureActivitys
                                .add(newActivity);
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text(
                                    'Atividade cadastrada com sucesso efeituado com sucesso!'),
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
