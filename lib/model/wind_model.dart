class WeatherModelWind {
/*
{
  "speed": 3.78,
  "deg": 147,
  "gust": 6.18
} 
*/

  double? speed;
  int? deg;
  double? gust;

  WeatherModelWind({
    this.speed,
    this.deg,
    this.gust,
  });
  WeatherModelWind.fromJson(Map<String, dynamic> json) {
    speed = json['speed']?.toDouble();
    deg = json['deg']?.toInt();
    gust = json['gust']?.toDouble();
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['speed'] = speed;
    data['deg'] = deg;
    data['gust'] = gust;
    return data;
  }
}
