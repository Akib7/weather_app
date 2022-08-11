class WeatherModelSys {
/*
{
  "country": "AU",
  "sunrise": 1660163875,
  "sunset": 1660205201
} 
*/

  String? country;
  int? sunrise;
  int? sunset;

  WeatherModelSys({
    this.country,
    this.sunrise,
    this.sunset,
  });
  WeatherModelSys.fromJson(Map<String, dynamic> json) {
    country = json['country']?.toString();
    sunrise = json['sunrise']?.toInt();
    sunset = json['sunset']?.toInt();
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['country'] = country;
    data['sunrise'] = sunrise;
    data['sunset'] = sunset;
    return data;
  }
}
