import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // Recortadores
      home: Scaffold(
          body: ClipPath(
              child: Image.network("https://www.shutterstock.com/image-photo/portrait-funny-cat-sunglasses-260nw-195698564.jpg", height: 200,
      ), clipper: CustomClipPath(), )),
    );
  }
}

class CustomClipPath extends CustomClipper<Path> {
  var radius=5.0;
  @override
  Path getClip(Size size) {
    Path path = Path();
    // path.lineTo(size.width / 2, size.height);
    // path.lineTo(size.width, 0.0);
    // return path;

    var w = size.width;
    var h = size.height;

    var r = min(w, h) / 2;

    var centerX = w / 2;
    var centerY = h / 2;

    path.moveTo(centerX + r * cos(0), centerY + r * sin(0));

    for (int i = 1; i <= 6; i++) {
      var x = centerX + r * cos(pi / 3 * i);
      var y = centerY + r * sin(pi / 3 * i);

      path.lineTo(x, y);
    }

    path.close();
    return path;
  }
  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}
/*
          body: ClipRRect(
          child: Image.network(
            "https://www.shutterstock.com/image-photo/portrait-funny-cat-sunglasses-260nw-195698564.jpg",
            height: 200,
          ),
          borderRadius: BorderRadius.circular(100.0),


        body: ClipOval(
        child: Image.network(
        "https://www.shutterstock.com/image-photo/portrait-funny-cat-sunglasses-260nw-195698564.jpg",
        height: 200,

        ClipPath 6 puntos

*/
