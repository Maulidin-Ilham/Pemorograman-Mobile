import 'package:belanja/models/item.dart';
import 'package:belanja/pages/home_page.dart';
import 'package:flutter/material.dart';

class ItemPage extends StatelessWidget {
  final Item? item;
  ItemPage({Key? key, this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("Item Page"),
          ),
          body: Container(
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("${item?.name} with ${item?.price}"),
                  SizedBox(height: 35),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomePage()));
                      },
                      style: TextButton.styleFrom(backgroundColor: Colors.blue),
                      child: Text(
                        "Back",
                        style: TextStyle(color: Colors.white),
                      ))
                ],
              ))),
    );
  }
}
