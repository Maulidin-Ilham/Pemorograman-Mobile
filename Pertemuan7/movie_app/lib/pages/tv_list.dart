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

  Future intialize() async {
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
    intialize();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Popular TV Series"),
      ),
      body: ListView.builder(
          itemCount: (this.tvsCount == null) ? 0 : this.tvsCount,
          itemBuilder: (context, int position) {
            return Card(
              color: Colors.white,
              elevation: 2.0,
              child: ListTile(
                title: Text(tvs?[position].name),
                subtitle: Text(
                  "Rating = " + tvs![position].vote_average.toString(),
                ),
                leading: Image.network("https://image.tmdb.org/t/p/w500" +
                    tvs?[position].poster_path),
              ),
            );
          }),
    );
  }
}
