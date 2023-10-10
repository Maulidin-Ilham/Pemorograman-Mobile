import "dart:convert";
import "dart:io";

import "package:http/http.dart" as http;
import "package:movie_app/models/movie.dart";
import "package:movie_app/models/tv.dart";

class HttpService {
  final String apiKey = "e7af07fc5bf5e98f7c49fc79e9d9ea41";
  final String moviesBaseUrl =
      "https://api.themoviedb.org/3/movie/popular?api_key=";
  final String tvBaseUrl = "https://api.themoviedb.org/3/tv/popular?api_key=";

  final nowPlayingMovies =
      "https://api.themoviedb.org/3/movie/now_playing?api_key=";

  final topRated = "https://api.themoviedb.org/3/movie/top_rated?api_key=";

  final upcoming = "https://api.themoviedb.org/3/movie/upcoming?api_key=";

  Future<List?> getPopularMovies() async {
    final String uri = moviesBaseUrl + apiKey;

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

  Future<List?> getNowPlayingMovies() async {
    final String uri = nowPlayingMovies + apiKey;

    http.Response result = await http.get(Uri.parse(uri));
    if (result.statusCode == HttpStatus.ok) {
      print("Sukses");
      final jsonResponse = json.decode(result.body);
      final nowPlayingmoviesMap = jsonResponse['results'];
      List nowPlayingMovies =
          nowPlayingmoviesMap.map((i) => Movie.fromJson(i)).toList();
      return nowPlayingMovies;
    } else {
      print("Fail");
      return null;
    }
  }

  Future<List?> getTopRatedMovies() async {
    final String uri = topRated + apiKey;

    http.Response result = await http.get(Uri.parse(uri));
    if (result.statusCode == HttpStatus.ok) {
      print("Sukses");
      final jsonResponse = json.decode(result.body);
      final topMoviesMap = jsonResponse['results'];
      List topMovies = topMoviesMap.map((i) => Movie.fromJson(i)).toList();
      return topMovies;
    } else {
      print("Fail");
      return null;
    }
  }

  Future<List?> getUpcomingMovies() async {
    final String uri = upcoming + apiKey;

    http.Response result = await http.get(Uri.parse(uri));
    if (result.statusCode == HttpStatus.ok) {
      print("Sukses");
      final jsonResponse = json.decode(result.body);
      final upcomingMoviesMap = jsonResponse['results'];
      List upcomingMovies =
          upcomingMoviesMap.map((i) => Movie.fromJson(i)).toList();
      return upcomingMovies;
    } else {
      print("Fail");
      return null;
    }
  }

  Future<List?> getPopularTV() async {
    final String uri = tvBaseUrl + apiKey;

    http.Response result = await http.get(Uri.parse(uri));
    if (result.statusCode == HttpStatus.ok) {
      print("Sukses");
      final jsonResponse = json.decode(result.body);
      final tvsMap = jsonResponse['results'];
      List tvs = tvsMap.map((i) => TV.fromJson(i)).toList();
      return tvs;
    } else {
      print("Fail");
      return null;
    }
  }
}
