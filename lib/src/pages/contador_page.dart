// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {
  ContadorPage({Key? key}) : super(key: key);

  @override
  _ContadorPageState createState() => _ContadorPageState();
}

class _ContadorPageState extends State<ContadorPage> {
  final _miEstilo = TextStyle(fontSize: 30);
  int _contador = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
            onPressed: () {
              _contador++;
              setState(() {});
            },
            child: Icon(Icons.add)),
        appBar: AppBar(
          centerTitle: true,
          title: Text("Texto_APPBAR"),
          elevation: 20,
        ),
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
              Text("Hola Mundo 1", style: _miEstilo),
              Text(_contador.toString(), style: _miEstilo)
            ])));
  }
}
