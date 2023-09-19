import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<String> data = ["Kelvin", "Reammur"];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: Text("Konverter Suhu"),
          ),
          body: Container(
            width: double.infinity,
            padding: EdgeInsets.all(8.0),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    inputFormatters: <TextInputFormatter>[
                      FilteringTextInputFormatter.digitsOnly
                    ],
                    decoration: InputDecoration(
                        labelText: "Masukkan Suhu Dalam Celcius"),
                  ),
                ),
                Container(
                    margin: EdgeInsets.only(top: 30), child: Text("Reamur")),
                Container(
                    margin: EdgeInsets.only(top: 30),
                    child: Column(
                      children: [
                        Container(
                          child: Text(
                            "Hasil",
                            style: TextStyle(fontSize: 30),
                          ),
                        ),
                        Container(
                            child: Text(
                          "0.8",
                          style: TextStyle(fontSize: 25),
                        ))
                      ],
                    )),
                Container(
                  margin: EdgeInsets.fromLTRB(6, 30, 6, 10),
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.all(Radius.circular(3))),
                  child: TextButton(
                    child: Text(
                      "Konversi Suhu",
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: () {},
                  ),
                )
              ],
            ),
          )),
    );
  }
}
