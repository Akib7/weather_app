class WeatherModelMain {
/*
{
  "temp": 292.43,
  "feels_like": 292.76,
  "temp_min": 292.43,
  "temp_max": 292.43,
  "pressure": 1017,
  "humidity": 90,
  "sea_level": 1017,
  "grnd_level": 1017
} 
*/

  double? temp;
  double? feelsLike;
  double? tempMin;
  double? tempMax;
  int? pressure;
  int? humidity;
  int? seaLevel;
  int? grndLevel;

  WeatherModelMain({
    this.temp,
    this.feelsLike,
    this.tempMin,
    this.tempMax,
    this.pressure,
    this.humidity,
    this.seaLevel,
    this.grndLevel,
  });
  WeatherModelMain.fromJson(Map<String, dynamic> json) {
    temp = json['temp']?.toDouble();
    feelsLike = json['feels_like']?.toDouble();
    tempMin = json['temp_min']?.toDouble();
    tempMax = json['temp_max']?.toDouble();
    pressure = json['pressure']?.toInt();
    humidity = json['humidity']?.toInt();
    seaLevel = json['sea_level']?.toInt();
    grndLevel = json['grnd_level']?.toInt();
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['temp'] = temp;
    data['feels_like'] = feelsLike;
    data['temp_min'] = tempMin;
    data['temp_max'] = tempMax;
    data['pressure'] = pressure;
    data['humidity'] = humidity;
    data['sea_level'] = seaLevel;
    data['grnd_level'] = grndLevel;
    return data;
  }
}
