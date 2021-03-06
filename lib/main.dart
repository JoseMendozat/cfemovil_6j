import 'package:flutter/material.dart';

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

class PaginaInicial extends StatefulWidget {
  PaginaInicial({Key? key}) : super(key: key);
  @override
  _PaginaInicialState createState() => _PaginaInicialState();
}

class _PaginaInicialState extends State<PaginaInicial> {
  List<String> images = [
    "assets/images/CFE.jpg",
    "assets/images/central.jpg",
    "assets/images/energia.jpg",
    "assets/images/descarga.png",
    "assets/images/logo1.png",
    "assets/images/poste.png",
    "assets/images/imagen.jpg",
    "assets/images/Default.png",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Flutter GridView"),
        ),
        body: GridView.builder(
          itemCount: images.length,
          itemBuilder: (BuildContext context, int index) {
            return Image.asset(images[index], fit: BoxFit.cover);
          },
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3, mainAxisSpacing: 10, crossAxisSpacing: 10),
          padding: EdgeInsets.all(12),
          shrinkWrap: true,
        ));
  }
}
