import 'package:flutter/material.dart';
import 'package:mi_primera_aplicacion/src/pages/home_page.dart';
// ignore_for_file: prefer_const_constructors
// ignore_for_file: use_key_in_widget_constructors

class MyApp extends StatelessWidget {
  @override
  Widget build(context) {
    return MaterialApp(home: Center(child: HomePage()));
  }
}
