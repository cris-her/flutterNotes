import 'package:flutter/material.dart';

//ctrl + W seleccionatodo el widget
//ctrl + clic para inspeccionar el widget
// box - cajas contenedores
// surround with --> alt + enter

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      //EdgeInsets.all(40.0)
      //knotch vs safe area
      // mediaQuery consulta el tamño del dispositivo
      // Padding vs Container
      // alt + enter remove widget
      //EdgeInsets.only(top: 80, right: 150, bottom: 30, left: 150)
      // geometria del contorno interno ...EdgeInsetsGeometry
      //decoration: BoxDecoration(),
      // assertion - afirmacion .... color xor decoration
      // 0,0 esquina de la izquierda

      //cajas placeholder
      // imagen expanda y no al reves

      // division entre cero para obtener error en tiempo de ejecucion
      body: SingleChildScrollView(child: Text("scrollea solo cuando se desborda"),),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

int dividir(int a, int b) {
  // on catch
  // catch generico
  //finally
  //vs late
  int resultado=0;
  //condicional

  //debug
  assert(b!=0, "No puede ser cero b");

  try{
    //division entera
    resultado = a~/b;
  }
  catch(error){
    debugPrint(error.toString());
    print("No pongas 0 en el valor de b");
  }
  return resultado;

  //
}


/*
ElevatedButton(child: const Text("Calcular"), onPressed: (){ print(dividir(10,0)); },)

Control de errores
AOT
verde ok
warning amarillo a mejorar --> pestaña inferior Problems, ideal sin warnings const para performance
rojo error --> IDE da opcion, warning ondulado en amarillo Foco amarillo, info inecesaria

pestaña dart analisis performance, no imposibilita, problemas si

or JIT
*/


/*

Card(
        //color: Colors.blue,
        shadowColor: Colors.deepPurple,
        elevation: 10,
        child: ListView(
          children: [
            Image.network(
              "https://th.bing.com/th/id/R.d09b38c1cf5838c9e6df43d0bae43a72?rik=ScFVcc3umoiAIQ&pid=ImgRaw&r=0",
              width: 240,
            ),
            Divider(),
            Text("Estos son unos gatos")
          ],
        ),
      )


RotatedBox(quarterTurns:2, child: Image.network("https://th.bing.com/th/id/R.d09b38c1cf5838c9e6df43d0bae43a72?rik=ScFVcc3umoiAIQ&pid=ImgRaw&r=0"),)

FractionallySizedBox(
          heightFactor: 0.5,
          widthFactor: 0.5,
          child: Container(color: Colors.blue,),
        )

SizedBox(
            width: double.infinity,
            height: 200,
            //child: Text("Sized box"),
          child: Container(color: Colors.blueGrey,),
            //child: Image.network("https://th.bing.com/th/id/R.d09b38c1cf5838c9e6df43d0bae43a72?rik=ScFVcc3umoiAIQ&pid=ImgRaw&r=0")
        )

Container(
        padding: EdgeInsets.all(50.0),
        //margin: EdgeInsets.all(80.0),

        decoration: BoxDecoration(
          // LinearGradient  begin: Alignment.topCenter, end: Alignment.bottomCenter) o radial
          gradient: RadialGradient(colors: [
            Color.fromARGB(255, 0, 0, 255),
            Colors.blueAccent,
            Colors.deepPurple
          ]),
          //color: Colors.blueGrey,
          //border: Border.all(width: 5, color: Colors.black),
          boxShadow: [
            BoxShadow(
                color: Colors.black26, offset: Offset(8.0, -8.0), blurRadius: 6)
          ],
          // geometria all - only
          //borderRadius: BorderRadius.all(Radius.circular(12))
        ),
        //sin contenido se hace del tamaño max
        // child: Image.network(
        //     "https://th.bing.com/th/id/R.d09b38c1cf5838c9e6df43d0bae43a72?rik=ScFVcc3umoiAIQ&pid=ImgRaw&r=0")
      )

*/
