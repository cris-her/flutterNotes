import 'package:flutter/material.dart';
import 'misWidgets.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Menus"),
        actions: [
          PopupMenuButton(
            itemBuilder: (context) => [
              PopupMenuItem(child: Text("Nuevo grupo"), value: "nuevoGrupo",),
              PopupMenuItem(child: Text("Nueva difusión"), value: "nuevaDifusion",),
              PopupMenuItem(child: Text("Dispositivos vinculados"), value: "dispositivosVinculados",),
              PopupMenuItem(child: Text("Mensajes destacados"), value: "mensajesDestacados",),
              PopupMenuItem(child: Text("Ayuda"), value: "ayuda",)
            ],
            onSelected: (valor) {
              switch(valor) {
                case "nuevoGrupo":
                  print("seleccionaron nuevo grupo");
                  break;
                case "nuevaDifusion":
                  print("seleccionaron nueva difusion");
                  break;
                case "dispositivosVinculados":
                  print("seleccionaron dispositivos vinculados");
                  break;
                case "mensajesDestacados":
                  print("seleccionaron mensajes destacados");
                  break;
                case "ayuda":
                  print("seleccionaron ayuda");
                  break;
              }
            },
          )
        ],
      ),
      //endDrawer: Drawer(),

      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("Crs"),
              accountEmail: Text("crs@mail.com"),
              decoration: BoxDecoration(
                  gradient:
                      LinearGradient(colors: [Colors.green, Colors.yellow]),
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://media.istockphoto.com/id/1322123064/photo/portrait-of-an-adorable-white-cat-in-sunglasses-and-an-shirt-lies-on-a-fabric-hammock.jpg?s=612x612&w=0&k=20&c=-G6l2c4jNI0y4cenh-t3qxvIQzVCOqOYZNvrRA7ZU5o="))),
            ),
            //FittedBox
            ListTile(
              title: const Text('Home'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            Divider(),
            ListTile(
              title: const Text('Mi cuenta'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            Divider(),
            ListTile(
              title: const Text('Mis pedidos'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            Divider(),
            ListTile(
              trailing: Icon(Icons.exit_to_app),
              title: const Text("Cerrar sesion"),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
          ],
        ),
      ),
      body: Column(children: [miContenedor, MiStepper()],),
    );
  }
}
