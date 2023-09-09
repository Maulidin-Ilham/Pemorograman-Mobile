import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Hello"),
        ),
        body: Container(
          padding: EdgeInsets.only(left: 10, right: 10),
          color: Colors.black,
          child: ListView(
            children: [
              Container(
                margin: const EdgeInsets.fromLTRB(0, 15, 0, 15),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "On Going",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    Text(
                      "Most Popular",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    )
                  ],
                ),
              ),
              Container(
                // color: Colors.amber,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey, width: 2),
                    borderRadius: BorderRadius.all(Radius.circular(10))),

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      width: double.infinity,
                      color: Colors.red,
                      child: Text("Tes"),
                    ),
                    Container(
                      child: Text("Tes"),
                    ),
                    Container(
                      color: Colors.black,
                      width: double.infinity,
                      child: Text(
                        "Trailer",
                        style: TextStyle(color: Colors.white),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
