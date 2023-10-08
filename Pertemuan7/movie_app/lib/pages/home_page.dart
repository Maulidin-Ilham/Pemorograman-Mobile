import 'package:flutter/material.dart';
import 'package:movie_app/pages/movie_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return MaterialApp(
    //   debugShowCheckedModeBanner: false,
    //   home: Scaffold(
    //     appBar: AppBar(
    //       title: Text("HomePage"),
    //     ),
    //     body: Container(
    //       width: 200,
    //       child: ListView(
    //         children: [Text("Ilham"), Text("Ilham")],
    //       ),
    //     ),
    //   ),
    // );
    return MovieList();
  }
}
