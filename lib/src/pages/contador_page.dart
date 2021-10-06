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
      floatingActionButton: crearBotones(),
      appBar: AppBar(
        centerTitle: true,
        title: Text("Texto_APPBAR"),
        elevation: 20,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text("Contador", style: _miEstilo),
          Text(_contador.toString(), style: _miEstilo),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(onPressed: cero, child: Text("A CERO")),
              TextButton(onPressed: suma, child: Text("MAS UNO")),
              TextButton(onPressed: resta, child: Text("MENOS UNO")),
            ],
          ),
        ],
      )),
    );
  }

  Widget crearBotones() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        SizedBox(width: 30.0),
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            BotonMasCien(),
            BotonMasCincuenta(),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(
              width: 30.0,
            ),
            Boton3(),
            Expanded(child: SizedBox()),
            Boton2(),
            Boton1()
          ],
        )
      ],
    );
  }

  Widget Boton1() {
    return FloatingActionButton(onPressed: suma, child: Icon(Icons.add));
  }

  Widget Boton2() {
    return FloatingActionButton(onPressed: resta, child: Icon(Icons.remove));
  }

  Widget Boton3() {
    return FloatingActionButton(
        onPressed: cero, child: Icon(Icons.exposure_zero));
  }

  Widget Boton4() {
    return FloatingActionButton(
        onPressed: porDos, child: Icon(Icons.exposure_plus_2));
  }

  Widget BotonMasCincuenta() {
    return FloatingActionButton(
        onPressed: mascincuenta, child: Icon(Icons.exposure_rounded));
  }

  Widget BotonMasCien() {
    return FloatingActionButton(
        onPressed: masCien, child: Icon(Icons.accessible_rounded));
  }

  suma() => setState(() {
        _contador++;
      });
  resta() => setState(() {
        _contador--;
      });
  cero() => setState(() {
        _contador = 0;
      });
  porDos() => setState(() {
        _contador *= 2;
      });
  mascincuenta() => setState(() {
        _contador += 50;
      });
  masCien() => setState(() {
        _contador += 100;
      });
}
