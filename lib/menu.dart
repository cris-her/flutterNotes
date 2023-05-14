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
        name: "Café americano",
        price: 35.0,
        image: "https://img.freepik.com/fotos-premium/cafe-americano-clasico-leche-sobre-fondo-gris_112304-1304.jpg"),
    Product(
        name: "Latte",
        price: 55.0,
        image:
            "https://previews.123rf.com/images/yktr/yktr1611/yktr161100007/68034748-una-taza-de-caf%C3%A9-latte.jpg"),
    Product(
        name: "Frappuccino de vainilla",
        price: 65.0,
        image:
            "https://starbucksjerez.files.wordpress.com/2015/02/8-cinnamon-roll-frappuccino-starbucks-secret-menu-items.jpg"),
    Product(
        name: "Mocha",
        price: 60.0,
        image:
            "https://images.freeimages.com/images/large-previews/cdc/coffee-mocha-1317730.jpg"),
    Product(
        name: "Té chai latte",
        price: 55.0,
        image:
            "https://cafeselcriollo.com/wp-content/uploads/2021/09/como-se-hace-te-chai-latte.jpg"),
    Product(
        name: "Espresso",
        price: 30.0,
        image:
            "https://thumbs.dreamstime.com/b/coffee-espresso-cup-39229449.jpg"),
    Product(
        name: "Frappuccino de caramelo",
        price: 65.0,
        image:
            "https://monkites.com/wp-content/uploads/frappe-caramel5.jpg"),
    Product(
        name: "Chocolate caliente",
        price: 45.0,
        image:
            "https://media.gq.com.mx/photos/61bfadd21bb5ccb2cf6039ee/3:2/w_2532,h_1688,c_limit/chocolate%20caliente%20mexicano.jpg"),
    Product(
        name: "Té verde matcha latte",
        price: 60.0,
        image:
            "https://cdn.forbes.com.mx/2020/09/te-matcha-latte--e1599501578817.jpg"),
    Product(
        name: "Cappuccino",
        price: 50.0,
        image:
            "https://upload.wikimedia.org/wikipedia/commons/1/16/Classic_Cappuccino.jpg")
  ];

  final List<Product> _checkedProducts = [];

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
          child: Column(

            children: [
              Padding(
                padding: EdgeInsets.only(left: 16.0, right: 16.0, top: 32.0, bottom: 0),
                child: Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(Icons.arrow_back)),
                    Expanded(child: Container()),
                  ],
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(

                    children: [
                      Wrap(

                          direction: Axis.vertical,
                          runSpacing: 10,
                          children: _products
                              .map((product) => SizedBox(
                                  width: 210,
                                  child: Column(
                                    children: [
                                      Image.network(product.image,),
                                      SizedBox(height: 8.0,),
                                      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [
                                        Column(children: [
                                          Text(product.name),
                                          SizedBox(height: 4.0,),
                                          Text("\$${product.price.toStringAsFixed(2)}"),
                                          SizedBox(height: 4.0,),
                                        ],),

                                        Checkbox(value: _checkedProducts.contains(product), onChanged: (value){
                                          _toggleChecked(product);
                                        })
                                      ],),

                                    ],
                                  )))
                              .toList()),

                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 16.0, right: 16.0, top: 0, bottom: 8.0),
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "pagar",
                          arguments: _checkedProducts);
                    },
                    child: Text("Pagar")),
              )
            ],
          ),
        ),
      ),
    );
  }
}

