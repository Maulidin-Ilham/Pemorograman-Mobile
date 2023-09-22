// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Konversi Suhu",
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePage createState() => _MyHomePage();
}

class _MyHomePage extends State<MyHomePage> {
  int _counter = 0;
  String test = "";
  void _increment() {
    setState(() {
      _counter++;
    });
  }

  void _reset() {
    setState(() {
      _counter = 0;
    });
  }

  String _tes = "";
  // double resultKelvin = 0.0;
  double _result = 0;
  void dropDownChanged(String? changeValue) {
    setState(() {
      _newValue = changeValue!;
      if (_newValue == "Kelvin") {
        _result = double.parse(inputController.text) + 273;
      } else {
        _result = double.parse(inputController.text) * 4 / 5;
      }
    });
  }

  void convertTemperatur(String _newValue) {
    setState(() {
      if (_newValue == "Kelvin") {
        _result = double.parse(inputController.text) + 273;
      } else {
        _result = double.parse(inputController.text) * 4 / 5;
      }
    });
  }

  var listItem = ["Kelvin", "Reamor"];

  double _inputUser = 0;
  double _kelvin = 0;
  double _reamur = 0;
  final inputController = TextEditingController();
  String _newValue = "Kelvin";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Konversi Suhu"),
      ),
      body: Container(
        padding: EdgeInsets.all(8),
        alignment: Alignment.center,
        child: Column(
          children: [
            Container(
                child: TextFormField(
                    keyboardType: TextInputType.number,
                    controller: inputController,
                    inputFormatters: <TextInputFormatter>[
                      FilteringTextInputFormatter.digitsOnly
                    ],
                    decoration: InputDecoration(labelText: 'Input Suhu'))),
            SizedBox(height: 30),
            Container(
              padding: EdgeInsets.all(6),
              width: 200,
              child: DropdownButton<String>(
                  isExpanded: true,
                  items: listItem.map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  value: _newValue,
                  onChanged: (String? changeValue) {
                    dropDownChanged(changeValue);
                  }),
            ),
            Container(
                margin: EdgeInsets.only(top: 20),
                child: Column(
                  children: [
                    Text(
                      "Hasil",
                      style: TextStyle(fontSize: 30),
                    ),
                    SizedBox(height: 10.0),
                    Text("$_result", style: TextStyle(fontSize: 22))
                  ],
                )),
            Container(
              margin: EdgeInsets.only(top: 20),
              width: double.infinity,
              child: TextButton(
                onPressed: () {
                  convertTemperatur(_newValue);
                },
                style: TextButton.styleFrom(
                  backgroundColor: Colors.blue,
                  padding: EdgeInsets.only(top: 15, bottom: 15),
                ),
                child: const Text(
                  'Konversi Suhu',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Container()
          ],
        ),
      ),
    );
  }
}
