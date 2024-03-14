class CoordinatesModel {
  final double lat;
  final double lon;

  CoordinatesModel({
    required this.lat,
    required this.lon,
  });

  factory CoordinatesModel.fromJson(Map<String, dynamic> json) {
    return CoordinatesModel(
      lat: json['lat'],
      lon: json['lon'],
    );
  }
}
