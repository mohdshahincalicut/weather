class values {
  String? cloudBase;
  String? cloudCeiling;
  String? cloudCover;
  String? dewPoint;
  String? freezingRainIntensity;
  String? humidity;
  String? precipitationProbability;
  String? pressureSurfaceLevel;
  String? rainIntensity;
  String? sleetIntensity;
  String? snowIntensity;
  String? temperature;
  String? temperatureApparent;
  String? uvHealthConcern;
  String? uvIndex;
  String? visibility;
  String? weatherCode;
  String? windDirection;
  String? windGust;
  String? windSpeed;

 

  values({
    required this.cloudBase,
    required this.cloudCeiling,
    required this.cloudCover,
    required this.dewPoint,
    required this.freezingRainIntensity,
    required this.humidity,
    required this.precipitationProbability,
    required this.pressureSurfaceLevel,
    required this.rainIntensity,
    required this.sleetIntensity,
    required this.snowIntensity,
    required this.temperature,
    required this.temperatureApparent,
    required this.uvHealthConcern,
    required this.uvIndex,
    required this.visibility,
    required this.weatherCode,
    required this.windDirection,
    required this.windGust,
    required this.windSpeed,
  });
  values.formJson(
    Map<String, dynamic> json,
  ) {
    cloudBase = json["cloudBase"];
    cloudCeiling = json["cloudCeiling"];
    cloudCover = json["cloudCover"];
    dewPoint = json["dewPoint"];
    freezingRainIntensity = json["freezingRainIntensity"];
    humidity = json["humidity"];
    precipitationProbability = json["precipitationProbability"];
    pressureSurfaceLevel = json["pressureSurfaceLevel"];
    rainIntensity = json["rainIntensity"];
    sleetIntensity = json["sleetIntensity"];
    snowIntensity = json["snowIntensity"];
    temperature = json["temperature"];
    uvHealthConcern = json["uvHealthConcern"];
    uvIndex = json["uvIndex"];
    visibility = json["visibility"];
    weatherCode = json["weatherCode"];
    windDirection = json["windDirection"];
    windGust = json["windGust"];
    windSpeed = json["windSpeed"];
  }
}
