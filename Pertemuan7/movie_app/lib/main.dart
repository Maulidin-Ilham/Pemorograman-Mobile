import 'package:flutter/material.dart';
import 'package:movie_app/pages/home_page.dart';
import 'package:movie_app/pages/movie_list.dart';
import 'package:movie_app/pages/tv_list.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "HomePage",
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/": (context) => HomePage(),
        "/movies": (context) => MovieList(),
        "/tvs": (context) => TvList()
      },
    );
  }
}
