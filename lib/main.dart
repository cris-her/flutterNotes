import 'package:flutter/material.dart';
//import 'package:sendsms/sendsms.dart';
import 'package:sms/sms.dart';

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
  final _phoneController = TextEditingController();
  final _messageController = TextEditingController();

  @override
  void dispose() {
    _phoneController.dispose();
    _messageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(title: Text("Envio de mensajes SMS")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            controller: _phoneController,
            keyboardType: TextInputType.phone,
            decoration: InputDecoration(
              labelText: 'Phone number',
            ),
          ),
          SizedBox(height: 16),
          TextField(
            controller: _messageController,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              labelText: 'Message',
            ),
          ),
          SizedBox(height: 16),
          ElevatedButton(
            onPressed: (){
              enviarMensaje(_phoneController.text, _messageController.text );
            },
            child: Text('Send SMS'),
          ),
        ],
      ),

  );
}
// que corra algun paquete con android 8
Future enviarMensaje(String telefono, String mensaje) async {

  SmsSender sender = new SmsSender();



  sender.sendSms(new SmsMessage(telefono, mensaje));
  /**/

  // await Sendsms.onGetPermission();
  //
  // if (await Sendsms.hasPermission()) {
  //   await Sendsms.onSendSMS(telefono, mensaje);
  // }
}