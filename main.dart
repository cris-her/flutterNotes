import 'package:flutter/material.dart';

main() {
  runApp(HolaMundo());
  // runapp - arranque
  // estado = dinamismo de la pantalla
  // stateless no cambia ... comportamiento de la pantalla
  // statefull si se va a interactuar, se divide en 2 less y full
  // 3. material design y cupertino style -> estilo
  // layout o distribucion
  // resto de widgets

  // floating button en stateless no jalaria
}
// andamio -> scaffold , distibucion, plantilla
// appbar, leader, title, actions
// tabs
// drawer - cajonera
// end drawer
// body
// floating action button
// bottom navigation bar

// ctrl + / para comentar

//logcat take screen
class HolaMundo extends StatelessWidget {
  @override
  // vs cuppertino style
  // vs custom scaffold
  Widget build(BuildContext context) => MaterialApp(
        // ctrl + p
        // ctrl + clic
        // ctrl + alt + l
        // child - children -> lista de widgets // acá se suele resolver si tiene la propiedad
        // alt + enter
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text("Hola mundo"),
            // alfa
            backgroundColor: Color.fromARGB(255, 7, 94, 84),
            actions: [Icon(Icons.search)],
          ),
          // fractional size
          // trailing colillaa
            body: ListView(children: [
              ListTile(leading: CircleAvatar(backgroundImage: NetworkImage("https://catingtonpost.com/wp-content/uploads/2016/10/Like-a-Boss-funny-meme-01.jpg")), title: Text("fresa"), subtitle: Text("sub"),),
              Divider(),
              ListTile(title: Text("uva")),
              ListTile(title: Text("manzana")),
              ListTile(title: Text("sandia"))
            ],),
            //CircleAvatar(backgroundImage: NetworkImage("https://catingtonpost.com/wp-content/uploads/2016/10/Like-a-Boss-funny-meme-01.jpg")),
            // Center(child: Image.network("https://catingtonpost.com/wp-content/uploads/2016/10/Like-a-Boss-funny-meme-01.jpg", width: 300,)),



          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            child: Icon(Icons.add_a_photo),
          ),
        ),
      );
}
