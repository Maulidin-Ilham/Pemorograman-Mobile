// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:belanja/models/item.dart';
import 'package:belanja/pages/item_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final List<Item> items = [
    Item(
        name: "Sugar",
        price: 5000,
        image: "assets/images/sugar.png",
        qty: 7,
        brand: "Gulaku"),
    Item(
        name: "Salt",
        price: 2000,
        image: "assets/images/salt.png",
        qty: 4,
        brand: "Kapal"),
    Item(
        name: "Ketchup",
        price: 15000,
        image: "assets/images/ketchup.png",
        qty: 1,
        brand: "Heinze"),
    Item(
        name: "Fried Chicken",
        price: 20000,
        image: "assets/images/fried-chicken.png",
        qty: 7,
        brand: "Champ"),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Image.asset(
              "assets/images/mcd.png",
              width: 35,
              height: 35,
            ),
            backgroundColor: Color(0xffdd1324),
          ),
          body: Container(
              child: Column(
            children: [
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(8),
                  child: ListView.builder(
                      itemCount: items.length,
                      itemBuilder: (context, index) {
                        final item = items[index];
                        return InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => ItemPage(item: item)));
                          },
                          child: Card(
                            color: Color(0xffffc300),
                            child: Container(
                              margin: EdgeInsets.all(15),
                              child: Row(
                                children: [
                                  Container(
                                      child: Image.asset(
                                    item.image,
                                    height: 50,
                                    width: 50,
                                  )),
                                  SizedBox(
                                    width: 25,
                                  ),
                                  Container(
                                    width: 100,
                                    child: Column(
                                      children: [
                                        Container(
                                            alignment: Alignment.centerLeft,
                                            child: Text(
                                              item.name,
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w800),
                                            )),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Container(
                                            alignment: Alignment.centerLeft,
                                            child: Text(
                                              "Rp. " + item.price.toString(),
                                              style: TextStyle(
                                                  fontSize: 18,
                                                  color: Colors.grey[600]),
                                              textAlign: TextAlign.end,
                                            )),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: 70,
                                  ),
                                  Column(
                                    children: [
                                      SizedBox(
                                        height: 40,
                                      ),
                                      Text(
                                        "x ${item.qty.toString()}",
                                        style: TextStyle(fontSize: 15),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        );
                      }),
                ),
              ),
              Container(
                width: double.infinity,
                margin: EdgeInsets.all(8),
                child: ElevatedButton.icon(
                  onPressed: () {
                    // Add logic to handle the order button press here...
                  },
                  icon: Icon(Icons.shopping_bag, color: Colors.black),
                  //icon data for elevated button
                  label: Text(
                    "Order Now",
                    style: TextStyle(color: Colors.black, fontSize: 17),
                  ), //label text
                  style: ElevatedButton.styleFrom(
                    //elevated btton background color
                    backgroundColor: Color(0xffffc300),
                  ),
                ),
              ),
            ],
          ))),
    );
  }
}
