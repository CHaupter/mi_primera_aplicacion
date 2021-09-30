import 'package:flutter/material.dart';
import 'package:mi_primera_aplicacion/src/pages/home_page.dart';

// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {
  @override
  Widget build(context) {
    // ignore: prefer_const_constructors
    return MaterialApp(home: Center(child: HomePage()));
  }
}
