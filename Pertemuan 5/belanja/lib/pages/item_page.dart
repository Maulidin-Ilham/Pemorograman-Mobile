// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, unused_import

import 'package:belanja/models/item.dart';
import 'package:belanja/pages/home_page.dart';
import 'package:flutter/material.dart';

class ItemPage extends StatelessWidget {
  final Item? item;
  ItemPage({Key? key, this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            leading: BackButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            centerTitle: true,
            title: Image.asset(
              "assets/images/mcd.png",
              width: 35,
              height: 35,
            ),
            backgroundColor: Color(0xffdd1324),
          ),
          body: Container(
              alignment: Alignment.center,
              child: Container(
                height: 400,
                width: 280,
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          offset: const Offset(
                            5.0,
                            5.0,
                          ),
                          blurRadius: 8.0,
                          spreadRadius: 1.0,
                        ), //BoxShadow
                        BoxShadow(
                          color: Color(0xffffc300),
                          // color: Colors.grey,
                          offset: const Offset(0.0, 0.0),
                          blurRadius: 0.0,
                          spreadRadius: 0.0,
                        ), //BoxS
                      ],
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          height: 120,
                          width: 120,
                          child: Image.asset("${item?.image}")),
                      SizedBox(height: 25),
                      Container(
                        width: 300,
                        padding: EdgeInsets.all(10),
                        alignment: Alignment.center,
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Name: ",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                      textAlign: TextAlign.left,
                                    ),
                                    Text(
                                      "${item?.name}",
                                      style: TextStyle(fontSize: 18),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Price: ",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                      textAlign: TextAlign.left,
                                    ),
                                    Text(
                                      "Rp. ${item?.price}",
                                      style: TextStyle(fontSize: 18),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Brand: ",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                      textAlign: TextAlign.left,
                                    ),
                                    Text(
                                      "${item?.brand}",
                                      style: TextStyle(fontSize: 18),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Quantity: ",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                      textAlign: TextAlign.left,
                                    ),
                                    Text(
                                      "${item?.qty} ",
                                      style: TextStyle(fontSize: 18),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 35),
                    ],
                  ),
                ),
              ))),
    );
  }
}
