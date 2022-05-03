import 'package:flutter/material.dart';
import 'package:tarango/galeriacfe.dart';

void main() {
  runApp(CfeApp());
} //Funcion principal

class CfeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'CFE Móvil',
        theme: ThemeData(
          primarySwatch: Colors.green,
        ),
        home: PaginaInicial());
  } //widget
} //Clase CFE widgets sin estado
