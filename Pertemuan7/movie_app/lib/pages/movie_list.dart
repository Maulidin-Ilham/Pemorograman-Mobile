import 'package:flutter/material.dart';
import 'package:movie_app/models/movie.dart';
import 'package:movie_app/service/http_service.dart';
import 'package:movie_app/widgets/now_playing.dart';
import 'package:movie_app/widgets/top_rated.dart';
import 'package:movie_app/widgets/upcoming.dart';

class MovieList extends StatefulWidget {
  const MovieList({Key? key}) : super(key: key);

  @override
  State<MovieList> createState() => _MovieListState();
}

class _MovieListState extends State<MovieList> {
  int? moviesCount;
  List? movies;
  List? nowPlayingMovies;
  List? upcomingMovies;
  List? topMovies;
  HttpService? service;

  Future initialize() async {
    movies = [];
    nowPlayingMovies = []; // Initialize nowPlayingMovies list
    movies = (await service?.getPopularMovies());
    nowPlayingMovies =
        (await service?.getNowPlayingMovies()); // Fetch now playing movies
    topMovies = (await service?.getTopRatedMovies());
    upcomingMovies = (await service?.getUpcomingMovies());
    setState(() {
      moviesCount = movies?.length;
      movies = movies;
      nowPlayingMovies = nowPlayingMovies;
      topMovies = topMovies;
      upcomingMovies = upcomingMovies;
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
                      "Popular Movies",
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
                      itemCount:
                          (this.moviesCount == null) ? 0 : this.moviesCount,
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
                                      (movies?[position].poster_path ?? ""),
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

              NowPlayingMovies(nowPlayingMovies: nowPlayingMovies),
              SizedBox(
                height: 20,
              ),
              UpcomingMovies(upcomingMovies: upcomingMovies),
              SizedBox(
                height: 20,
              ),
              TopMovies(topMovies: topMovies),

              // end new movies
            ],
          )),
    );
  }
}
