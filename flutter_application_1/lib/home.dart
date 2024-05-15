import 'package:flutter/material.dart';
import 'numeros.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.security,
                      size: 20,
                      color: Colors.white,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 170),
                      child: Text(
                        "Menu",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 100, 20, 0),
            child: Container(
              width: double.infinity,
              height: 200,
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
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Text(
                      "Controles",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Numero()),
                        );
                      },
                      child: Text(
                        "Números",
                        style: TextStyle(fontSize: 17),
                      ),
                      style: TextButton.styleFrom(
                          foregroundColor: Colors.orange[900]),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "Nomes",
                        style: TextStyle(fontSize: 17),
                      ),
                      style: TextButton.styleFrom(
                          foregroundColor: Colors.orange[900]),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
