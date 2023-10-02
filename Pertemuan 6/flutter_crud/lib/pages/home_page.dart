import 'package:flutter/material.dart';
import 'package:flutter_crud/database/db.helper.dart';
import 'package:flutter_crud/models/item.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  DbHelper dbHelper = DbHelper();
  int count = 0;
  List<Item> itemList = [];
  @override
  Widget build(BuildContext context) {
    if (itemList == null) {
      itemList = <Item>[];
    }
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: Text("Daftar Item"),
          ),
          body: Column(
            children: [
              Expanded(
                child: createListView(
                  count: count,
                ),
              ),
              Container()
            ],
          )),
    );
  }
}

class createListView extends StatelessWidget {
  final int count;
  const createListView({super.key, required this.count});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: count,
      itemBuilder: (BuildContext context, int index) {
        return const Card(
          color: Colors.white,
          elevation: 2.0,
          child: ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.red,
              child: Icon(Icons.ad_units),
            ),
          ),
        );
      },
    );
  }
}
