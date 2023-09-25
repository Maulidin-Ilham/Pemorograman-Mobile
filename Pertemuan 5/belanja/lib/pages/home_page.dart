import 'package:belanja/models/item.dart';
import 'package:belanja/pages/item_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final List<Item> items = [
    Item(name: "Sugar", price: 5000),
    Item(name: "Salt", price: 2000),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Hello")),
        body: Container(
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
                    child: Container(
                      margin: EdgeInsets.all(15),
                      child: Row(
                        children: [
                          Expanded(child: Text(item.name)),
                          Expanded(
                              child: Text(
                            item.price.toString(),
                            textAlign: TextAlign.end,
                          ))
                        ],
                      ),
                    ),
                  ),
                );
              }),
        ),
      ),
    );
  }
}
