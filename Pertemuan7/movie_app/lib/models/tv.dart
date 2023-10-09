class TV {
  int? id;
  String? name;
  double? vote_average;
  String? overview;
  String? poster_path;

  TV(this.id, this.name, this.vote_average, this.overview, this.poster_path);

  TV.fromJson(Map<String, dynamic> parsedJson) {
    this.id = parsedJson['id'];
    this.name = parsedJson['name'];
    this.vote_average = (parsedJson['vote_average'].toDouble());
    this.overview = parsedJson['overview'];
    this.poster_path = parsedJson['poster_path'];
  }
}
