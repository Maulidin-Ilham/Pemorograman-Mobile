import 'package:flutter/material.dart';
import 'package:flutter_crud/database/db.helper.dart';
import 'package:flutter_crud/models/item.dart';
import 'package:flutter_crud/pages/entry_form.dart';
import 'package:sqflite/sqflite.dart';

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
    return Scaffold(
      appBar: AppBar(
        title: Text("Daftar Item"),
        backgroundColor: Colors.black,
      ),
      body: Column(
        children: [
          Expanded(child: createListView()),
          Container(
            alignment: Alignment.bottomCenter,
            child: SizedBox(
              width: double.infinity,
              child: TextButton(
                  onPressed: () async {
                    var newItem = Item("", 0);
                    var item = await navigateToEntryForm(context, newItem);

                    if (item != null) {
                      int result = await dbHelper.insert(item);
                      if (result > 0) {
                        updateListView();
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Text("Tambah Data Berhasil"),
                              actions: <Widget>[
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(context)
                                        .pop(); // Close the dialog
                                  },
                                  child: Text("OK"),
                                ),
                              ],
                            );
                          },
                        );
                      }
                    }
                  },
                  child: Container(
                    width: double.infinity,
                    color: Colors.black,
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(8),
                    child: Text(
                      "Tambah Item",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  )),
            ),
          )
        ],
      ),
    );
  }

  Future<Item?> navigateToEntryForm(BuildContext context, Item item) async {
    if (item == null) {
      item = Item("", 0); // Create a new Item object if item is null
    }
    var result = await Navigator.push<Item?>(context,
        MaterialPageRoute(builder: (BuildContext context) {
      return EntryForm(
        item: item,
      );
    }));
    return result;
  }

  ListView createListView() {
    return ListView.builder(
        itemCount: count,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            color: Colors.white,
            elevation: 2.0,
            child: ListTile(
              leading: const CircleAvatar(
                backgroundColor: Colors.red,
                child: Icon(Icons.ad_units),
              ),
              title: Text(
                this.itemList[index].name,
                style: TextStyle(color: Colors.black, fontSize: 22),
              ),
              subtitle: Text(
                "Rp. " + this.itemList[index].price.toString(),
                style: TextStyle(color: Colors.grey),
              ),
              trailing: GestureDetector(
                child: Icon(Icons.delete),
                onTap: () async {
                  // Show a confirmation dialog
                  bool confirmDelete = await showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        content:
                            Text("Apakah anda yakin akan menghapus item ini?"),
                        actions: <Widget>[
                          TextButton(
                            onPressed: () {
                              // User confirmed deletion
                              Navigator.of(context).pop(true);
                            },
                            child: Text("Ya"),
                          ),
                          TextButton(
                            onPressed: () {
                              // User canceled deletion
                              Navigator.of(context).pop(false);
                            },
                            child: Text("Tidak"),
                          ),
                        ],
                      );
                    },
                  );

                  // If the user confirmed deletion, proceed with deleting the item
                  if (confirmDelete == true) {
                    int deletedCount =
                        await dbHelper.delete(this.itemList[index].id!);
                    if (deletedCount > 0) {
                      // Item deleted successfully, update the list
                      updateListView();
                    }
                  }
                },
              ),
              onTap: () async {
                var editedItem =
                    await navigateToEntryForm(context, this.itemList[index]);

                if (editedItem != null) {
                  int result = await dbHelper.update(editedItem);
                  if (result > 0) {
                    // Item updated successfully, update the list
                    updateListView();

                    // Show an alert to indicate the successful edit
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text("Edit Data Berhasil"),
                          actions: <Widget>[
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop(); // Close the dialog
                              },
                              child: Text("OK"),
                            ),
                          ],
                        );
                      },
                    );
                  }
                }
              },
            ),
          );
        });
  }

  void updateListView() {
    final Future<Database> dbFuture = dbHelper.initDb();
    dbFuture.then((database) {
      Future<List<Item>> itemListFuture = dbHelper.getItemList();
      itemListFuture.then((itemList) {
        setState(() {
          this.itemList = itemList; // Update the itemList
          this.count = itemList.length; // Update the count
        });
      });
    });
  }
}
