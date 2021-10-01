import 'package:flutter/material.dart';
import 'package:mi_primera_aplicacion/src/pages/contador_page.dart';
import 'src/app.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: ContadorPage());
  }
}
