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
      home: Scaffold(
          body: GridView.extent(
        scrollDirection: Axis.horizontal,
        maxCrossAxisExtent: 300.0,
        padding: EdgeInsets.all(10.0),
        mainAxisSpacing: 25,
        crossAxisSpacing: 50,
        children: [
          Image.network(
            "https://www.shutterstock.com/image-photo/portrait-funny-cat-sunglasses-260nw-195698564.jpg",
            height: 180,
          ),
          Image.network(
            "https://www.shutterstock.com/image-photo/portrait-funny-cat-sunglasses-260nw-195698564.jpg",
            height: 180,
          ),
          Image.network(
            "https://www.shutterstock.com/image-photo/portrait-funny-cat-sunglasses-260nw-195698564.jpg",
            height: 180,
          ),
          Image.network(
            "https://www.shutterstock.com/image-photo/portrait-funny-cat-sunglasses-260nw-195698564.jpg",
            height: 180,
          ),
        ],
      )),
    );
  }
}

class CustomClipPath extends CustomClipper<Path> {
  var radius = 5.0;
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

        String conValor = "value";
        late String paraDespues;
        String? conNulo;

        paraDespues = "after";
        conNulo ??= "No es vacio";

        print(conValor.length);
        print(paraDespues.length);
        print(conNulo?.length);
        print(conNulo!.length);

        // Recortadores

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

        home: Scaffold(
            body: ClipPath(
                child: Image.network("https://www.shutterstock.com/image-photo/portrait-funny-cat-sunglasses-260nw-195698564.jpg", height: 200,
        ), clipper: CustomClipPath(), )),



        body: Opacity(
        child: Image.network(
          "https://www.shutterstock.com/image-photo/portrait-funny-cat-sunglasses-260nw-195698564.jpg",
          height: 200,
        ),
        opacity: 0.7,


        //rotar, escalar, transladar
        home: Scaffold(
          body: Transform.rotate(
        child: Image.network(
          "https://www.shutterstock.com/image-photo/portrait-funny-cat-sunglasses-260nw-195698564.jpg",
          height: 200,
        ),
        angle: -pi/4, // En radianes
        )),
        );


        body: Transform.scale(
        child: Image.network(
          "https://www.shutterstock.com/image-photo/portrait-funny-cat-sunglasses-260nw-195698564.jpg",
          height: 200,
        ),
        scaleY: 1.5,


        body: Transform.translate(
        child: Image.network(
          "https://www.shutterstock.com/image-photo/portrait-funny-cat-sunglasses-260nw-195698564.jpg",
          height: 200,
        ),
        offset: Offset(60, 80),


        //salvar widget derecha regresa un widget que alinea a la derecha y guardar en una variable
        // para mover en especifio pudiera se un translate, vs Alignment

        // en eje Y es contrario arriba negativo, 1 es cien por ciento
        //0,0 es centrado

        //alt enter envolver o remover

        body: Align(
        alignment: Alignment(0, 0),
        child: Image.network(
          "https://www.shutterstock.com/image-photo/portrait-funny-cat-sunglasses-260nw-195698564.jpg",
          height: 200,
        ),
        )),


        //widgets de layout
        // eje principal en row es y, en columna es x
        body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment:
              MainAxisAlignment.spaceBetween, // alineacionMultiple
          children: [
            Image.network(
              "https://www.shutterstock.com/image-photo/portrait-funny-cat-sunglasses-260nw-195698564.jpg",
              height: 180,
            ),
            Image.network(
              "https://www.shutterstock.com/image-photo/portrait-funny-cat-sunglasses-260nw-195698564.jpg",
              height: 180,
            ),
            Image.network(
              "https://www.shutterstock.com/image-photo/portrait-funny-cat-sunglasses-260nw-195698564.jpg",
              height: 180,
            ),
            Image.network(
              "https://www.shutterstock.com/image-photo/portrait-funny-cat-sunglasses-260nw-195698564.jpg",
              height: 180,
            ),
          ],
        ),
      )),


        body: Wrap(
        direction: Axis.horizontal,
        alignment: WrapAlignment.spaceEvenly,
        children: [
          Image.network(
            "https://www.shutterstock.com/image-photo/portrait-funny-cat-sunglasses-260nw-195698564.jpg",
            height: 180,
          ),
          Image.network(
            "https://www.shutterstock.com/image-photo/portrait-funny-cat-sunglasses-260nw-195698564.jpg",
            height: 180,
          ),
          Image.network(
            "https://www.shutterstock.com/image-photo/portrait-funny-cat-sunglasses-260nw-195698564.jpg",
            height: 180,
          ),
          Image.network(
            "https://www.shutterstock.com/image-photo/portrait-funny-cat-sunglasses-260nw-195698564.jpg",
            height: 180,
          ),
        ],
      )),

      //table data, asc des, table
      // wrap + single scroll view, maxCrossAxisExtent el tamaño

      body: GridView.extent(
        scrollDirection: Axis.horizontal,
        maxCrossAxisExtent: 300.0,
        padding: EdgeInsets.all(10.0),
        mainAxisSpacing: 25,
        crossAxisSpacing: 50,
        children: [
          Image.network(
            "https://www.shutterstock.com/image-photo/portrait-funny-cat-sunglasses-260nw-195698564.jpg",
            height: 180,
          ),
          Image.network(
            "https://www.shutterstock.com/image-photo/portrait-funny-cat-sunglasses-260nw-195698564.jpg",
            height: 180,
          ),
          Image.network(
            "https://www.shutterstock.com/image-photo/portrait-funny-cat-sunglasses-260nw-195698564.jpg",
            height: 180,
          ),
          Image.network(
            "https://www.shutterstock.com/image-photo/portrait-funny-cat-sunglasses-260nw-195698564.jpg",
            height: 180,
          ),
        ],
      )),

*/
