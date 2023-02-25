import 'package:flutter/material.dart';

main() {
  runApp(HolaMundo());
}

class HolaMundo extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        home: DefaultTabController(
          length: 4,
          initialIndex: 1,
          child: Scaffold(
            appBar: AppBar(
              title: Text("WhatsApp"),
              bottom: TabBar(
                isScrollable: true,
                indicatorColor: Colors.white,
                labelColor: Colors.white,
                unselectedLabelColor: Color.fromARGB(255, 179, 217, 210),
                labelPadding: EdgeInsets.symmetric(horizontal: 16.0),
                labelStyle: TextStyle(fontSize: 16),
                tabs: <Widget>[
                  Tab(
                    icon: Icon(
                      Icons.people,
                      size: 22,
                    ),
                  ),
                  Tab(
                    text: "   Chats   ",
                  ),
                  Tab(
                    text: " Estados ",
                  ),
                  Tab(
                    text: "Llamadas",
                  )
                ],
              ),
              backgroundColor: Color.fromARGB(255, 0, 128, 105),
              actions: [
                Padding(
                  padding: EdgeInsets.only(right: 10.0, left: 11.0),
                  child: Icon(Icons.camera_alt_outlined),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 10.0, left: 11.0),
                  child: Icon(Icons.search),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 10.0, left: 11.0),
                  child: Icon(Icons.more_vert),
                )
              ],
            ),
            body: ListView(
              children: [
                ListTile(
                  leading: CircleAvatar(
                      radius: 22,
                      backgroundImage: NetworkImage(
                          "https://raw.githubusercontent.com/cris-her/ZipTest/master/ProfFelipe.PNG")),
                  title: Stack(
                    children: [
                      Text(
                        "Prof Felipe",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      Positioned(
                        top: 0,
                        right: 0,
                        child: Text(
                          "7:56 p. m.",
                          style: TextStyle(fontSize: 12),
                        ),
                      ),
                    ],
                  ),
                  subtitle: Text("Cristofer Joshua Hernández Sánchez"),
                ),
                ListTile(
                  leading: CircleAvatar(
                      radius: 22,
                      backgroundImage: NetworkImage(
                          "https://raw.githubusercontent.com/cris-her/ZipTest/master/Ico.PNG")),
                  title: Stack(
                    children: [
                      Text(
                        "GEN-2020",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      Positioned(
                        top: 0,
                        right: 0,
                        child: Text(
                          "7:53 p. m.",
                          style: TextStyle(fontSize: 12),
                        ),
                      ),
                    ],
                  ),
                  subtitle: Text("+52 55 6802 5796: Ay, si ya ví"),
                ),
                ListTile(
                  leading: CircleAvatar(
                      radius: 22,
                      backgroundImage: NetworkImage(
                          "https://raw.githubusercontent.com/cris-her/ZipTest/master/ServicioSocial.PNG")),
                  title: Stack(
                    children: [
                      Text(
                        "Servicio social Aaron",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      Positioned(
                        top: 0,
                        right: 0,
                        child: Text(
                          "10:22 a. m.",
                          style: TextStyle(fontSize: 12),
                        ),
                      ),
                    ],
                  ),
                  subtitle: Text("+52 56 1492 9371: Los que no lo han..."),
                ),
                ListTile(
                  leading: CircleAvatar(
                      radius: 22,
                      backgroundImage: NetworkImage(
                          "https://raw.githubusercontent.com/cris-her/ZipTest/master/Fes.PNG")),
                  title: Stack(
                    children: [
                      Text(
                        "FES Aragón",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      Positioned(
                        top: 0,
                        right: 0,
                        child: Text(
                          "22/02/23",
                          style: TextStyle(fontSize: 12),
                        ),
                      ),
                    ],
                  ),
                  subtitle: Text("Hola, buenas noches, te compartimos..."),
                ),
                ListTile(
                  leading: CircleAvatar(
                      radius: 22,
                      backgroundImage: NetworkImage(
                          "https://raw.githubusercontent.com/cris-her/ZipTest/master/Ale.PNG")),
                  title: Stack(
                    children: [
                      Text(
                        "Ale",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      Positioned(
                        top: 0,
                        right: 0,
                        child: Text(
                          "10:50 a. m.",
                          style: TextStyle(fontSize: 12),
                        ),
                      ),
                    ],
                  ),
                  subtitle: Text("¿Tienes las llaves del A203?"),
                ),
                ListTile(
                  leading: CircleAvatar(
                      radius: 22,
                      backgroundImage: NetworkImage(
                          "https://raw.githubusercontent.com/cris-her/ZipTest/master/Elon.PNG")),
                  title: Stack(
                    children: [
                      Text(
                        "Elon Musk",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      Positioned(
                        top: 0,
                        right: 0,
                        child: Text(
                          "2:26 p. m.",
                          style: TextStyle(fontSize: 12),
                        ),
                      ),
                    ],
                  ),
                  subtitle: Text("Acabo de comprar un planeta xD"),
                ),
              ],
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: () {},
              child: Icon(Icons.chat),
              backgroundColor: Color.fromARGB(255, 0, 128, 105),
            ),
          ),
        ),
      );
}
