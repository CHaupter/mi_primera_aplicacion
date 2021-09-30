import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class HomePage extends StatelessWidget {
  @override
  Widget build(context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Texto_APPBAR"),
          elevation: 20,
        ),
        body: const Center(child: Text("Hola Mundo")));
  }
}
