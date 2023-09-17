import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Hello"),
        ),
        body: Container(
          padding: EdgeInsets.all(8.0),
          color: Colors.grey[400],
          child: ListView(
            children: <Widget>[
              Container(
                child: Text("Tes1"),
              ),
              Container(
                child: Text("child2"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
