class Movie {
  int? id;
  String? title;
  double? vote_average;
  String? overview;
  String? poster_path;

  Movie(
      this.id, this.title, this.vote_average, this.overview, this.poster_path);

  Movie.fromJson(Map<String, dynamic> parsedJson) {
    this.id = parsedJson['id'];
    this.title = parsedJson['title'];
    this.vote_average = (parsedJson['vote_average'].toDouble());
    this.overview = parsedJson['overview'];
    this.poster_path = parsedJson['poster_path'];
  }
}
