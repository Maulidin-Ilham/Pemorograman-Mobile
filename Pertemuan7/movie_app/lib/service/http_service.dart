import "dart:convert";
import "dart:io";

import "package:http/http.dart" as http;
import "package:movie_app/models/movie.dart";

class HttpService {
  final String apiKey = "e7af07fc5bf5e98f7c49fc79e9d9ea41";
  final String baseUrl = "https://api.themoviedb.org/3/movie/popular?api_key=";

  Future<List?> getPopularMovies() async {
    final String uri = baseUrl + apiKey;

    http.Response result = await http.get(Uri.parse(uri));
    if (result.statusCode == HttpStatus.ok) {
      print("Sukses");
      final jsonResponse = json.decode(result.body);
      final moviesMap = jsonResponse['results'];
      List movies = moviesMap.map((i) => Movie.fromJson(i)).toList();
      return movies;
    } else {
      print("Fail");
      return null;
    }
  }
}
