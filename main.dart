import 'package:flutter/material.dart';
import 'package:all_sensors2/all_sensors2.dart'; // https://pub.dev/packages/all_sensors2

void main() => runApp(MyApp());


class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<double> acelerometro = [0.0, 0.0, 0.0];
  List<double> giroscopio = [0.0, 0.0, 0.0];
  bool proximidad = false;

  @override
  void initState() {
    accelerometerEvents?.listen((event) {
      setState(() {
        acelerometro = [event.x, event.y, event.z];
      });
    });
    accelerometerEvents?.listen((event) {
      setState(() {
        giroscopio = [event.x, event.y, event.z];
      });
    });
    proximityEvents?.listen((event) {
      setState(() {
        proximidad = event.getValue();
      });
    });
  }

  @override
  Widget build(BuildContext context) => MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: Text("Test"),),
      body: ListView(
        children: [
          ListTile(
            title: Text("Acelerometro: ${acelerometro[0]} , ${acelerometro[1]}, ${acelerometro[2]} "),
          ),
          ListTile(
            title: Text("Giroscopio: ${giroscopio[0]} , ${giroscopio[1]}, ${giroscopio[2]} "),
          ),
          ListTile(
            title: Text("Proximidad: $proximidad "),
          ),
        ],
      ),
    ),
  );
}

/*
   String seleccion = "";

  @override
  Widget build(BuildContext context) => MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: Text("Test $seleccion"),),
      body: ListView(
        children: [
          ListTile(
            title: Text("Alexis"),
            onTap: (){
              setState(() {
                seleccion = "Alex";
              });
            },
          ),
          ListTile(
            title: Text("Henry"),
            onTap: (){
              setState(() {
                seleccion = "Hen";
              });
            },
          ),
          ListTile(
            title: Text("Alejandra"),
            onTap: (){
              setState(() {
                seleccion = "Ale";
              });
            },
          ),
          ListTile(
            title: Text("Cristofer"),
            onTap: (){
              setState(() {
                seleccion = "Cris";
              });
            },
          ),
          ListTile(
            title: Text(seleccion),
          ),
        ],
      ),
    ),
  );
*/

/*
   double ancho = 400;
  String masDetalles = "Detalles";

  @override
  Widget build(BuildContext context) => MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: Text("Test"),),
      body: Column(
        children: [
          GestureDetector(
            child: Image.network("https://external-content.duckduckgo.com/iu/?u=http%3A%2F%2Fwww.mobafire.com%2Fimages%2Fchampion%2Fskins%2Flandscape%2Fannie-classic.jpg&f=1&nofb=1&ipt=f1e9acab51a5f90076da24df62fa00acfbca87921fb8a9bcc3f61f1974391127&ipo=images", width: ancho,),
            onPanStart: (detalles){
              setState(() {
                masDetalles = detalles.localPosition.toString();
              });
            },
            onPanUpdate: (detalles){
              setState(() {
                masDetalles = detalles.globalPosition.toString();
              });
            },
            onPanEnd: (detalles){
              setState(() {
                masDetalles = detalles.velocity.toString();
              });
            },
            //   onTap: (){
            //     setState(() {
            //       ancho = 200;
            //     });
            //   },
            // onDoubleTap: (){
            //     setState(() {
            //       ancho = 400;
            //     });
            // },
            // onTapDown: (detalles){
            //   setState(() {
            //     masDetalles = detalles.globalPosition.toString();
            //   });
            // },
          ),
          Text("Detalles $masDetalles")
        ],
      ),
    ),
  );
*/

/*
   String evento = "";

  @override
  Widget build(BuildContext context) => MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: Text("Test $evento"),),
      body: Center(
        child: ElevatedButton(
          child: Text("Presionar"),
          onPressed: (){
            setState(() {
              evento="ON PRESSED";
            });
          },
          onLongPress: (){
            setState(() {
              evento="ON LONG PRESS";
            });
          },
        ),
      ),
    ),
  );
*/