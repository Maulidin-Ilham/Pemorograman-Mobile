import 'package:flutter/material.dart';
import 'package:movie_app/service/http_service.dart';

class TvList extends StatefulWidget {
  const TvList({Key? key}) : super(key: key);

  @override
  State<TvList> createState() => _TvListState();
}

class _TvListState extends State<TvList> {
  int? tvsCount;
  List? tvs;
  HttpService? service;

  Future initialize() async {
    tvs = [];
    tvs = (await service?.getPopularTV());
    setState(() {
      tvsCount = tvs?.length;
      tvs = tvs;
    });
  }

  @override
  void initState() {
    service = HttpService();
    initialize();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.black,
          title: Center(
            child: Image.asset(
              "assets/images/logo.png",
              fit: BoxFit.contain,
              height: 70,
            ),
          )),
      body: Container(
          padding: EdgeInsets.all(10.0),
          width: double.infinity,
          height: double.infinity,
          color: Color(0xff131834),
          child: ListView(
            children: [
              Column(
                // Wrap both text and gallery in a Column
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(left: 26.0, top: 15.0),
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Popular Tv Series",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                  // Add spacing
                  // Horizontal gallery of movie posters
                  Container(
                    height: 200.0, // Set a fixed height for the gallery
                    child: ListView.builder(
                      scrollDirection:
                          Axis.horizontal, // Set horizontal scrolling
                      itemCount: (this.tvsCount == null) ? 0 : this.tvsCount,
                      itemBuilder: (context, int position) {
                        return Container(
                          width: 150.0, // Set card width
                          alignment: Alignment.center,
                          margin:
                              EdgeInsets.all(1.0), // Add spacing between cards
                          child: Card(
                            color: Colors.transparent,
                            shadowColor: Colors.transparent,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.network(
                                  "https://image.tmdb.org/t/p/w500" +
                                      (tvs?[position].poster_path ?? ""),
                                  height: 150.0, // Set image height
                                  width: 130.0, // Set image width
                                  fit: BoxFit.contain,
                                  // Maintain aspect ratio
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),

              // new movies
              SizedBox(
                height: 20,
              ),

              // end new movies
            ],
          )),
    );
  }
}
