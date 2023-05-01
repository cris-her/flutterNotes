import 'package:flutter/material.dart';

import 'product.dart';

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  final List<Product> _products = [
    Product(
        name: "Product A",
        price: 10.0,
        image:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSS3c9F1bLzG2txSeBAB5grqMVKEJ3soRDpmrMFRRsmsDIgNY9hzPHo5SPrMtTqE_WcLcg&usqp=CAU"),
    Product(
        name: "Product B",
        price: 20.0,
        image:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSS3c9F1bLzG2txSeBAB5grqMVKEJ3soRDpmrMFRRsmsDIgNY9hzPHo5SPrMtTqE_WcLcg&usqp=CAU"),
    Product(
        name: "Product C",
        price: 30.0,
        image:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSS3c9F1bLzG2txSeBAB5grqMVKEJ3soRDpmrMFRRsmsDIgNY9hzPHo5SPrMtTqE_WcLcg&usqp=CAU")
  ];

  final Set<Product> _checkedProducts = {};

  void _toggleChecked(Product product){
    setState(() {
      if(_checkedProducts.contains(product)){
        _checkedProducts.remove(product);
      } else {
        _checkedProducts.add(product);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [Colors.green, Colors.yellow])),
          child: SingleChildScrollView(
            child: Column(
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.arrow_back)),
                Wrap(
                    children: _products
                        .map((product) => SizedBox(
                            width: 150,
                            child: Column(
                              children: [
                                Image.network(product.image),
                                SizedBox(height: 8.0,),
                                Text(product.name),
                                SizedBox(height: 4.0,),
                                Text("\$${product.price.toStringAsFixed(2)}"),
                                SizedBox(height: 4.0,),
                                Checkbox(value: _checkedProducts.contains(product), onChanged: (value){
                                  _toggleChecked(product);
                                })
                              ],
                            )))
                        .toList()),
                ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "pagar",
                          arguments: _checkedProducts);
                    },
                    child: Text("Pagar"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}

/*
[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.network(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSS3c9F1bLzG2txSeBAB5grqMVKEJ3soRDpmrMFRRsmsDIgNY9hzPHo5SPrMtTqE_WcLcg&usqp=CAU",
                        width: 128,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.network(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSS3c9F1bLzG2txSeBAB5grqMVKEJ3soRDpmrMFRRsmsDIgNY9hzPHo5SPrMtTqE_WcLcg&usqp=CAU",
                        width: 128,
                      ),
                    ),

                  ]
 */
