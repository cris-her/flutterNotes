import 'dart:math';

import 'package:flutter/material.dart';
import 'package:mar17/home.dart';
import 'package:mar17/pagar.dart';

import 'menu.dart';

void main() {
  runApp( HolaMundo());
}

class HolaMundo extends StatefulWidget {
  const HolaMundo({Key? key}) : super(key: key);

  @override
  State<HolaMundo> createState() => _HolaMundoState();
}

class _HolaMundoState extends State<HolaMundo> {
  @override
  Widget build(BuildContext context) => MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: "home",
    routes: {
      "home": (context) => Home(),
      "menu": (context) => Menu(),
      "pagar": (context) => Pagar()
    },
  );
}
