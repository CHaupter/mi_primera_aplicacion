// ignore_for_file: avoid_print
// ignore_for_file: use_key_in_widget_constructors
// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final miEstilo = TextStyle(fontSize: 30);
  int contador = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
            onPressed: () {
              //contador++;
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
              Text("Hola Mundo 1", style: miEstilo),
              Text(contador.toString(), style: miEstilo)
            ])));
  }
}
