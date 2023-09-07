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
            title: Text("MyApp"),
            backgroundColor: Colors.red,
          ),
          body: ListView(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(left: 16, right: 16),
                width: double.infinity,
                height: 60,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "BERITA TERBARU",
                      style: TextStyle(fontSize: 13),
                    ),
                    Text("PERTANDINGAN HARI INI",
                        style: TextStyle(fontSize: 13))
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 6, right: 6),
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.purple)),
                child: Stack(
                  children: <Widget>[
                    Container(
                      width: double.infinity,
                      height: 400,
                      color: Colors.purple[400],
                      alignment: Alignment.bottomLeft,
                      padding: EdgeInsets.only(left: 10, bottom: 20),
                      child: Text(
                        "Transfer",
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 340,
                      alignment: Alignment.bottomCenter,
                      color: Colors.white,
                      padding: EdgeInsets.only(bottom: 15),
                      child: Text(
                        "Costa Mendekat Ke Palmeiras",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w500),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 290,
                      alignment: Alignment.bottomCenter,
                      child: Image(
                          image: NetworkImage(
                              "https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg")),
                    ),
                  ],
                ),
              ),
              NewsItem(),
              NewsItem(),
              NewsItem(),
              NewsItem(),
            ],
          ),
        ));
  }

  Container NewsItem() {
    return Container(
      margin: EdgeInsets.only(top: 10, left: 6, right: 6),
      width: double.infinity,
      height: 200,
      color: Colors.amber,
      child: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
            height: 200,
            width: double.infinity,
            alignment: Alignment.bottomLeft,
            padding: EdgeInsets.only(bottom: 10, top: 10, left: 10),
            child: Text(
              "Barcelona Feb 13, 2021",
              style: TextStyle(fontSize: 16),
            ),
          ),
          Container(
            width: double.infinity,
            height: 160,
            color: Colors.brown,
            child: GridView.count(
              crossAxisCount: 2,
              children: <Widget>[
                Container(
                  color: Colors.green,
                  alignment: Alignment.center,
                  child: Image(
                      image: NetworkImage(
                          "https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg")),
                ),
                Container(
                  color: Colors.blue,
                  alignment: Alignment.centerRight,
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                      "Pique Bilang Wasit Untungkan Madrid, Koeman Tepok Jidat"),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
