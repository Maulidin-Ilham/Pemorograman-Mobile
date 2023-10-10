import 'package:flutter/material.dart';

class TopMovies extends StatelessWidget {
  final List? topMovies;

  TopMovies({required this.topMovies});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(left: 26.0, top: 15.0),
          alignment: Alignment.topLeft,
          child: Text(
            "Top Rated Movies",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        // Horizontal gallery of movie posters for now playing movies
        Container(
          height: 200.0,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: topMovies?.length,
            itemBuilder: (context, int position) {
              return Container(
                width: 150.0,
                alignment: Alignment.center,
                margin: EdgeInsets.all(1.0),
                child: Card(
                  color: Colors.transparent,
                  shadowColor: Colors.transparent,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.network(
                        "https://image.tmdb.org/t/p/w500" +
                            (topMovies?[position].poster_path ?? ""),
                        height: 150.0,
                        width: 130.0,
                        fit: BoxFit.contain,
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
