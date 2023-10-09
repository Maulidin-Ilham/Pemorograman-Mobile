import 'package:flutter/material.dart';
import 'package:movie_app/service/http_service.dart';

class MovieList extends StatefulWidget {
  const MovieList({Key? key}) : super(key: key);

  @override
  State<MovieList> createState() => _MovieListState();
}

class _MovieListState extends State<MovieList> {
  int? moviesCount;
  List? movies;
  HttpService? service;

  Future initialize() async {
    movies = [];
    movies = (await service?.getPopularMovies());
    setState(() {
      moviesCount = movies?.length;
      movies = movies;
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
        // title: Text("Popular Movies"),
      ),
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
                    margin: EdgeInsets.only(left: 26.0),
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Popular Movies",
                      style: TextStyle(color: Colors.white, fontSize: 28.0),
                    ),
                  ),
                  SizedBox(height: 10.0), // Add spacing
                  // Horizontal gallery of movie posters
                  Container(
                    height: 200.0, // Set a fixed height for the gallery
                    child: ListView.builder(
                      scrollDirection:
                          Axis.horizontal, // Set horizontal scrolling
                      itemCount:
                          (this.moviesCount == null) ? 0 : this.moviesCount,
                      itemBuilder: (context, int position) {
                        return Container(
                          width: 150.0, // Set card width
                          margin:
                              EdgeInsets.all(8.0), // Add spacing between cards
                          child: Card(
                            color: Colors.transparent,
                            shadowColor: Colors.transparent,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.network(
                                  "https://image.tmdb.org/t/p/w500" +
                                      (movies?[position].poster_path ?? ""),
                                  height: 170.0, // Set image height
                                  width: 150.0, // Set image width
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
              Column(
                // Wrap both text and gallery in a Column
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(left: 26.0),
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Popular Movies",
                      style: TextStyle(color: Colors.white, fontSize: 28.0),
                    ),
                  ),
                  SizedBox(height: 10.0), // Add spacing
                  // Horizontal gallery of movie posters
                  Container(
                    height: 200.0, // Set a fixed height for the gallery
                    child: ListView.builder(
                      scrollDirection:
                          Axis.horizontal, // Set horizontal scrolling
                      itemCount:
                          (this.moviesCount == null) ? 0 : this.moviesCount,
                      itemBuilder: (context, int position) {
                        return Container(
                          width: 150.0, // Set card width
                          margin:
                              EdgeInsets.all(8.0), // Add spacing between cards
                          child: Card(
                            color: Colors.transparent,
                            shadowColor: Colors.transparent,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.network(
                                  "https://image.tmdb.org/t/p/w500" +
                                      (movies?[position].poster_path ?? ""),
                                  height: 170.0, // Set image height
                                  width: 150.0, // Set image width
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
              // end new movies
            ],
          )),
    );
  }
}
