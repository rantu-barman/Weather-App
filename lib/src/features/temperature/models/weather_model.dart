class WeatherModel {
  final num? cloudBase;
  final num? cloudCeiling;
  final int? cloudCover;
  final num? dewPoint;
  final int? freezingRainIntensity;
  final int? humidity;
  final int? precipitationProbability;
  final num? pressureSurfaceLevel;
  final int? rainIntensity;
  final int? sleetIntensity;
  final int? snowIntensity;
  final num? temperature;
  final num? temperatureApparent;
  final int? uvHealthConcern;
  final int? uvIndex;
  final int? visibility;
  final int? weatherCode;
  final num? windDirection;
  final num? windGust;
  final num? windSpeed;

  WeatherModel({
    this.cloudBase,
    this.cloudCeiling,
    this.cloudCover,
    this.dewPoint,
    this.freezingRainIntensity,
    this.humidity,
    this.precipitationProbability,
    this.pressureSurfaceLevel,
    this.rainIntensity,
    this.sleetIntensity,
    this.snowIntensity,
    this.temperature,
    this.temperatureApparent,
    this.uvHealthConcern,
    this.uvIndex,
    this.visibility,
    this.weatherCode,
    this.windDirection,
    this.windGust,
    this.windSpeed,
  });

  factory WeatherModel.fromJson(Map<String, dynamic> json) {
    return WeatherModel(
      cloudBase: json['cloudBase'],
      cloudCeiling: json['cloudCeiling'],
      cloudCover: json['cloudCover'],
      dewPoint: json['dewPoint'],
      freezingRainIntensity: json['freezingRainIntensity'],
      humidity: json['humidity'],
      precipitationProbability: json['precipitationProbability'],
      pressureSurfaceLevel: json['pressureSurfaceLevel'],
      rainIntensity: json['rainIntensity'],
      sleetIntensity: json['sleetIntensity'],
      snowIntensity: json['snowIntensity'],
      temperature: json['temperature'],
      temperatureApparent: json['temperatureApparent'],
      uvHealthConcern: json['uvHealthConcern'],
      uvIndex: json['uvIndex'],
      visibility: json['visibility'],
      weatherCode: json['weatherCode'],
      windDirection: json['windDirection'],
      windGust: json['windGust'],
      windSpeed: json['windSpeed'],
    );
  }
}
