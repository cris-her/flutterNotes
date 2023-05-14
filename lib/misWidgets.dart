import 'package:flutter/material.dart';

var miContenedor = Container(
  decoration: BoxDecoration(
      gradient: LinearGradient(colors: [Colors.green, Colors.yellow])),
  child: Stack(
    children: [
      Center(
          child: Image.network(
        "https://cdn.forbes.com.mx/2021/09/img1-1.jpg",
        width: 2048,
      )),
      Center(
        child: ElevatedButton(
          onPressed: () {
            //Navigator.pushNamed(context, "menu");
          },
          child: Text("Menu"),
        ),
      )
    ],
  ),
);

Widget MiStepper() {
  int cantidad = 0;

  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      IconButton(icon: Icon(Icons.exposure_minus_1), onPressed: (){
        //setState()
      },),
      Text(cantidad.toString()),
      Icon(Icons.exposure_plus_1_outlined),
    ],
  );
}
