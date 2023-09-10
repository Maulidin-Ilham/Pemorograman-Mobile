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
          backgroundColor: Colors.black,
          centerTitle: true,
          title: Center(
            child: Image.asset(
              "assets/images/logo.png",
              fit: BoxFit.contain,
              height: 70,
            ),
          ),
        ),
        body: Container(
          padding: EdgeInsets.only(left: 10, right: 10),
          color: Color(0xff131834),
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
              Card(
                color: Color(0XFF221F1F),
                child: Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        width: double.infinity,
                        child: ClipRRect(
                          child: Image.asset("assets/images/barbie.jpg"),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 10, bottom: 10),
                        child: const Text(
                          "Barbie (2023)",
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        padding: EdgeInsets.fromLTRB(0, 8, 0, 8),
                        child: Row(
                          children: <Widget>[
                            const Text(
                              "2023",
                              style: TextStyle(color: Colors.white),
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            Container(
                              color: Colors.grey,
                              padding: EdgeInsets.fromLTRB(3, 1, 3, 1),
                              child: const Text("16+",
                                  style: TextStyle(color: Colors.white)),
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            const Text("2+ hours",
                                style: TextStyle(color: Colors.white)),
                            const SizedBox(
                              width: 8,
                            ),
                            Container(
                              color: Colors.white,
                              padding: EdgeInsets.fromLTRB(3, 1, 3, 1),
                              child: const Text("HD",
                                  style: TextStyle(
                                      color: Colors.black,
                                      backgroundColor: Colors.white)),
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10, bottom: 10),
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xffF5F5F1)),
                          child: Container(
                              alignment: Alignment.center,
                              child: const Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.arrow_right_outlined,
                                      color: Colors.black),
                                  Text(
                                    "Play",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 1.6),
                                  ),
                                ],
                              )),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                child: Text(
                  "Trending Movies This Week",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.only(top: 20, bottom: 10),
                color: Color(0xff221F1F),
                elevation: 10.0,
                child: Container(
                  padding: EdgeInsets.all(8),
                  width: double.infinity,
                  margin: EdgeInsets.only(top: 10, bottom: 10),
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(2.0))),
                  child: Column(children: <Widget>[
                    Container(
                      padding: EdgeInsets.fromLTRB(8, 0, 8, 10),
                      child: Row(
                        children: [
                          Container(
                            child: Image.asset(
                              "assets/images/openheimer.jpg",
                              height: 130,
                            ),
                          ),
                          const SizedBox(
                            width: 30,
                          ),
                          Container(
                            child: const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "Title: ",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 17,
                                          fontWeight: FontWeight.w500,
                                          letterSpacing: 2),
                                    ),
                                    Text(
                                      "Openheimer",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          letterSpacing: 2),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "Age: ",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          letterSpacing: 2),
                                    ),
                                    Text(
                                      "20+",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          letterSpacing: 2),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "Duration: ",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          letterSpacing: 2),
                                    ),
                                    Text(
                                      "2+ hours",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          letterSpacing: 2),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(8, 10, 8, 0),
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Category : Action",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            letterSpacing: 2),
                      ),
                    )
                  ]),
                ),
              ),
              Card(
                margin: EdgeInsets.only(top: 20, bottom: 10),
                color: Color(0xff221F1F),
                elevation: 10.0,
                child: Container(
                  padding: EdgeInsets.all(8),
                  width: double.infinity,
                  margin: EdgeInsets.only(top: 10, bottom: 10),
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(2.0))),
                  child: Column(children: <Widget>[
                    Container(
                      padding: EdgeInsets.fromLTRB(8, 0, 8, 10),
                      child: Row(
                        children: [
                          Container(
                            child: Image.asset(
                              "assets/images/openheimer.jpg",
                              height: 130,
                            ),
                          ),
                          const SizedBox(
                            width: 30,
                          ),
                          Container(
                            child: const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "Title: ",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 17,
                                          fontWeight: FontWeight.w500,
                                          letterSpacing: 2),
                                    ),
                                    Text(
                                      "Openheimer",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          letterSpacing: 2),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "Age: ",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          letterSpacing: 2),
                                    ),
                                    Text(
                                      "20+",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          letterSpacing: 2),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "Duration: ",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          letterSpacing: 2),
                                    ),
                                    Text(
                                      "2+ hours",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          letterSpacing: 2),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(8, 10, 8, 0),
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Category : Action",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            letterSpacing: 2),
                      ),
                    )
                  ]),
                ),
              ),
              Card(
                margin: EdgeInsets.only(top: 20, bottom: 10),
                color: Color(0xff221F1F),
                elevation: 10.0,
                child: Container(
                  padding: EdgeInsets.all(8),
                  width: double.infinity,
                  margin: EdgeInsets.only(top: 10, bottom: 10),
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(2.0))),
                  child: Column(children: <Widget>[
                    Container(
                      padding: EdgeInsets.fromLTRB(8, 0, 8, 10),
                      child: Row(
                        children: [
                          Container(
                            child: Image.asset(
                              "assets/images/openheimer.jpg",
                              height: 130,
                            ),
                          ),
                          const SizedBox(
                            width: 30,
                          ),
                          Container(
                            child: const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "Title: ",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 17,
                                          fontWeight: FontWeight.w500,
                                          letterSpacing: 2),
                                    ),
                                    Text(
                                      "Openheimer",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          letterSpacing: 2),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "Age: ",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          letterSpacing: 2),
                                    ),
                                    Text(
                                      "20+",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          letterSpacing: 2),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "Duration: ",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          letterSpacing: 2),
                                    ),
                                    Text(
                                      "2+ hours",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          letterSpacing: 2),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(8, 10, 8, 0),
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Category : Action",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            letterSpacing: 2),
                      ),
                    )
                  ]),
                ),
              ),
              Card(
                margin: EdgeInsets.only(top: 20, bottom: 10),
                color: Color(0xff221F1F),
                elevation: 10.0,
                child: Container(
                  padding: EdgeInsets.all(8),
                  width: double.infinity,
                  margin: EdgeInsets.only(top: 10, bottom: 10),
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(2.0))),
                  child: Column(children: <Widget>[
                    Container(
                      padding: EdgeInsets.fromLTRB(8, 0, 8, 10),
                      child: Row(
                        children: [
                          Container(
                            child: Image.asset(
                              "assets/images/openheimer.jpg",
                              height: 130,
                            ),
                          ),
                          const SizedBox(
                            width: 30,
                          ),
                          Container(
                            child: const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "Title: ",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 17,
                                          fontWeight: FontWeight.w500,
                                          letterSpacing: 2),
                                    ),
                                    Text(
                                      "Openheimer",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          letterSpacing: 2),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "Age: ",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          letterSpacing: 2),
                                    ),
                                    Text(
                                      "20+",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          letterSpacing: 2),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "Duration: ",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          letterSpacing: 2),
                                    ),
                                    Text(
                                      "2+ hours",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          letterSpacing: 2),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(8, 10, 8, 0),
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Category : Action",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            letterSpacing: 2),
                      ),
                    )
                  ]),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
