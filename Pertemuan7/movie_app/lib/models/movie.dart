class Movie {
  int? id;
  String? title;
  double? vote_average;
  String? overview;
  String? posterPath;

  Movie(this.id, this.title, this.vote_average, this.overview, this.posterPath);

  Movie.fromJson(Map<String, dynamic> parsedJson) {
    this.id = parsedJson['id'];
    this.title = parsedJson['title'];
    this.vote_average = (parsedJson['vote_average'].toDouble());
    this.overview = parsedJson['overview'];
    this.posterPath = parsedJson['posterPath'];
  }
}
