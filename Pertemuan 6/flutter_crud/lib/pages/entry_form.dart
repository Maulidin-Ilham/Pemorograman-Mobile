// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_crud/models/item.dart';

class EntryForm extends StatefulWidget {
  const EntryForm({Key? key, required this.item}) : super(key: key);

  final Item item;

  @override
  State<EntryForm> createState() => _EntryFormState(this.item);
}

class _EntryFormState extends State<EntryForm> {
  Item item;
  _EntryFormState(this.item);

  TextEditingController nameController = TextEditingController();
  TextEditingController priceController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    if (item != null) {
      nameController.text = item.name;
      priceController.text = item.price;
    }

    return Scaffold(
      appBar: AppBar(
        title: item == null ? const Text("Tambah") : const Text("Ubah"),
        leading: const Icon(Icons.keyboard_arrow_left),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 15.0, left: 10.0, right: 10.0),
        child: ListView(
          children: <Widget>[
            // nama
            Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 20),
              child: TextField(
                controller: nameController,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                    labelText: "Nama Barang",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0))),
                onChanged: (value) {},
              ),
            ),

            // harga
            Padding(
              padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
              child: TextField(
                controller: priceController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Harga',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
                onChanged: (value) {
//
                },
              ),
            ),

            // tombol button
            Padding(
                padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
                child: Row(
                  children: <Widget>[
                    // tombol simpan
                    Expanded(
                        child: TextButton(
                            onPressed: () {
                              if (item == null) {
                                item = Item(nameController.text,
                                    int.parse(priceController.text));
                              } else {
                                item.name = nameController.text;
                                item.price = int.parse(priceController.text);
                              }
                              Navigator.pop(context, item);
                            },
                            child: const Text(
                              "Save",
                              textScaleFactor: 1.5,
                            ))),

                    // tombol batal
                    Expanded(
                        child: TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text(
                              "Cancel",
                              textScaleFactor: 1.5,
                            )))
                  ],
                )),
// to
          ],
        ),
      ),
    );
  }
}
