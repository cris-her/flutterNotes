import 'package:flutter/material.dart';
import 'package:sendsms/sendsms.dart';

main() {
  runApp(MaterialApp(
    home: PM(),
  ));
}

//stless
//stful
//material design
//cupertino style
/*
class PM extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Placeholder();
  }
}*/

// manejo de mensajes --- encabezado, body, listas. botones, logcat print()

class PM extends StatefulWidget {
  // const ({Key? key}) : super(key: key);

  @override
  State<PM> createState() => _PMState();
}

class _PMState extends State<PM> {
  //String encabezado = "Widget con estado2"; // hot reload no funciona si viene de una variable, para eso HotRestart reinicializa las variables
  //setState para que se refresque la pantalla - edo
  //Color colorBarra = Colors.deepPurple;
  //int i = 0;

  //setState(() {
  // encabezado = "Presionado";
  // colorBarra = Colors.orange;
  // i++;
  // print("el valor de i es $i");
  //});

  //},


  //AlertDialog no esta bloqueado de manera modal, si se da tap afuera se cierra
  // envio de mensajes con sms

  //ctrl W para seleccionar widget

  /*
  onPressed: () => showDialog(
              context: context,
              builder: (context) => AlertDialog(
                    title: Text("Amazon"),
                    content: Text("Deseas comprar los tenis"),
                    actions: [
                      TextButton(
                          onPressed: () {
                            print("si");
                          },
                          child: Text("Si")),
                      TextButton(
                          onPressed: () {
                            print("no");
                            Navigator.of(context).pop();
                          },
                          child: Text("No"))
                    ],
                  ) //{

              )
  */

  //run edit configuration ...additional run args: --no-sound-null-safety
  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(title: Text("Envio de mensajes SMS")),
      body: ElevatedButton(
          child: Text("Enviar SMS"),
          onPressed: () {
            enviarMensaje("5580130616", "Cristofer");
          }
      )
  );
}
// que corra algun paquete con android 8
Future enviarMensaje(String telefono, String mensaje) async {
  await Sendsms.onGetPermission();

  if (await Sendsms.hasPermission()) {
    await Sendsms.onSendSMS(telefono, mensaje);
  }
}