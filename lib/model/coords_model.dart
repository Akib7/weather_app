class WeatherModelCoord {
/*
{
  "lon": 139,
  "lat": 35
} 
*/

  int? lon;
  int? lat;

  WeatherModelCoord({
    this.lon,
    this.lat,
  });
  WeatherModelCoord.fromJson(Map<String, dynamic> json) {
    lon = json['lon']?.toInt();
    lat = json['lat']?.toInt();
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['lon'] = lon;
    data['lat'] = lat;
    return data;
  }
}
