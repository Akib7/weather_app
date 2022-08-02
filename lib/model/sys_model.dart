class WeatherModelSys {
/*
{
  "type": 2,
  "id": 2019346,
  "country": "JP",
  "sunrise": 1659470065,
  "sunset": 1659519956
} 
*/

  int? type;
  int? id;
  String? country;
  int? sunrise;
  int? sunset;

  WeatherModelSys({
    this.type,
    this.id,
    this.country,
    this.sunrise,
    this.sunset,
  });
  WeatherModelSys.fromJson(Map<String, dynamic> json) {
    type = json['type']?.toInt();
    id = json['id']?.toInt();
    country = json['country']?.toString();
    sunrise = json['sunrise']?.toInt();
    sunset = json['sunset']?.toInt();
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['type'] = type;
    data['id'] = id;
    data['country'] = country;
    data['sunrise'] = sunrise;
    data['sunset'] = sunset;
    return data;
  }
}
