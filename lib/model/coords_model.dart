class WeatherModelCoord {
/*
{
  "lon": 145.7667,
  "lat": -16.9167
} 
*/

  double? lon;
  double? lat;

  WeatherModelCoord({
    this.lon,
    this.lat,
  });
  WeatherModelCoord.fromJson(Map<String, dynamic> json) {
    lon = json['lon']?.toDouble();
    lat = json['lat']?.toDouble();
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['lon'] = lon;
    data['lat'] = lat;
    return data;
  }
}
