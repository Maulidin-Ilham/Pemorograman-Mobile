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

  Future intialize() async {
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
    intialize();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Popular Movies"),
      ),
      body: ListView.builder(
          itemCount: (this.moviesCount == null) ? 0 : this.moviesCount,
          itemBuilder: (context, int position) {
            return Card(
              color: Colors.white,
              elevation: 2.0,
              child: ListTile(
                title: Text(movies?[position].title),
                subtitle: Text(
                    "Rating = " + movies![position].vote_average.toString()),
              ),
            );
          }),
    );
  }
}
