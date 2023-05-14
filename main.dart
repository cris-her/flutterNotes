import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_firestore/cloud_firestore.dart';


//snapshot

final baseDatos = FirebaseFirestore.instance;

void main() => runApp(Datos());

class Datos extends StatefulWidget {
  const Datos({Key? key}) : super(key: key);

  @override
  State<Datos> createState() => Estado();
}

class Estado extends State<Datos> {

  @override
  void initState() {
    Firebase.initializeApp().whenComplete(() {
      setState(() {

      });
    });
  }

  @override
  Widget build(BuildContext context) => MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: Text("Datos en la nube"),),
      body: Column(
        children: [
          ElevatedButton(child: Text("Insertar"),
          onPressed: (){
            insertar();
          },
          ), ElevatedButton(child: Text("Consultar"),
          onPressed: (){
            consultar();
          },
          ), ElevatedButton(child: Text("Modificar"),
          onPressed: (){
            modificar();
          },
          ), ElevatedButton(child: Text("Elinimar"),
          onPressed: (){
            eliminar();
          },
          ),
        ],
      ),
    ),
  );

}

void insertar() async{
  try {
    await baseDatos.collection("Starbucks")
        .doc("1")
        .set({
        "Expreso": "40"
    });
  }
  catch(error){
    print(error);
  }
}

void consultar() async{
  try {
    await baseDatos.collection("Starbucks").get().then(
        (resultado){
          resultado.docs.forEach((element) {
            print(element.data());
          });
        }

    );
  }
  catch(error){
    print(error);
  }
}

void modificar() async{
  try {
    await baseDatos.collection("Starbucks")
        .doc("1")
        .update({
        "Expreso": "150"
    });
  }
  catch(error){
    print(error);
  }
}

void eliminar() async{
  try {
    await baseDatos.collection("Starbucks")
        .doc("1")
        .delete();
  }
  catch(error){
    print(error);
  }
}




