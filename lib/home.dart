
import 'package:flutter/material.dart';

class Home extends StatefulWidget {

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(title: Text("Starbucks")),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [Colors.green, Colors.yellow])
        ),
        child: Stack(
          children: [
            Center(child: Image.network("https://cdn.forbes.com.mx/2021/09/img1-1.jpg", width: 2048,)),
            Center(child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "menu");
              },
              child: Text("Menu"),),)
          ],
        ),
      ),
    );
  }
}
