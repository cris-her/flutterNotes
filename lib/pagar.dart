import 'package:flutter/material.dart';

import 'product.dart';

class Pagar extends StatefulWidget {
  const Pagar({Key? key}) : super(key: key);

  @override
  State<Pagar> createState() => _PagarState();
}

class _PagarState extends State<Pagar> {
  @override
  Widget build(BuildContext context) {
    final List<Product> args =
        ModalRoute.of(context)!.settings.arguments as List<Product>;
    final double total;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [Colors.green, Colors.yellow])),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  "Productos seleccionados:",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                ),
              ),
              Expanded(
                child: ListView.builder(
                    itemCount: args.length,
                    itemBuilder: (context, index) => ListTile(
                          title: Text(
                            args[index].name,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text("\$${args[index].price.toStringAsFixed(2)}"),
                        )
                ),
              ),
              Divider(),
              Padding(padding: EdgeInsets.all(16.0),child: Text("Total: "),)
            ],
          ),
        ),
      ),
    );
  }
}

//10 productos, nombre precio imagen, caja de check y total y desglose
