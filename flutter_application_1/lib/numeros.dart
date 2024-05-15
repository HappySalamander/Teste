import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/home.dart';

class Numero extends StatefulWidget {
  //const Numero({super.key, required this.title});
  //final String title;

  @override
  State<Numero> createState() => _NumeroState();
}

class _NumeroState extends State<Numero> {
  final TextEditingController controllerNumero = TextEditingController();
  int numeroInicial = 0;
  int numeroFinal = 0;
  bool resultado = false;
  double valor = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 30, 20, 0),
              child: Container(
                width: double.infinity,
                height: 80,
                decoration: BoxDecoration(
                  color: Colors.orange[900],
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(1, 1),
                      blurRadius: 7,
                      spreadRadius: 4,
                      color: const Color.fromARGB(255, 235, 191, 61),
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Números",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                      Icon(
                        Icons.radar_sharp,
                        size: 20,
                        color: Colors.white,
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 50, 20, 0),
              child: Container(
                width: double.infinity,
                height: 85,
                decoration: BoxDecoration(
                  color: Colors.orange[100],
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(1, 1),
                      blurRadius: 7,
                      spreadRadius: 4,
                      color: const Color.fromARGB(255, 235, 191, 61),
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(50, 0, 50, 0),
                  child: Row(
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: 35,
                            height: 35,
                            child: TextField(
                              inputFormatters: [
                                FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))
                              ],
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(0)),
                                contentPadding: EdgeInsets.symmetric(
                                    horizontal: 16.0, vertical: 12.0),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Text("Num Inicial"),
                      Row(
                        children: [
                          SizedBox(
                            width: 35,
                            height: 35,
                            child: TextField(
                              inputFormatters: [
                                FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))
                              ],
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(0)),
                                contentPadding: EdgeInsets.symmetric(
                                    horizontal: 16.0, vertical: 12.0),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Text("Num Final"),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 50, 20, 0),
              child: Container(
                width: double.infinity,
                height: 80,
                decoration: BoxDecoration(
                  color: Colors.orange[100],
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(1, 1),
                      blurRadius: 7,
                      spreadRadius: 4,
                      color: const Color.fromARGB(255, 235, 191, 61),
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(50, 0, 50, 0),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 35,
                          height: 35,
                          child: TextField(
                            inputFormatters: [
                              FilteringTextInputFormatter.allow(
                                  RegExp(r'[0-9]'))
                            ],
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(0)),
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 16.0, vertical: 12.0),
                            ),
                          ),
                        ),
                        Text("Qnt Pessoas"),
                        TextButton(
                          onPressed: () {},
                          child: Text("GO"),
                        ),
                      ]),
                ),
              ),
            ),
            Visibility(
                visible: resultado,
                child: Container(
                  width: double.infinity,
                  height: 90,
                  decoration: BoxDecoration(
                    color: Colors.orange[100],
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(1, 1),
                        blurRadius: 7,
                        spreadRadius: 4,
                        color: const Color.fromARGB(255, 235, 191, 61),
                      ),
                    ],
                  ),
                )),
            Padding(
              padding: const EdgeInsets.only(top: 150),
              child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => MyHomePage(title: "Home Page")),
                    );
                  },
                  child: Text("Voltar")),
            ),
          ],
        ),
      ),
    );
  }
}
