class WeatherModelWeather {
/*
{
  "id": 804,
  "main": "Clouds",
  "description": "overcast clouds",
  "icon": "04n"
} 
*/

  int? id;
  String? main;
  String? description;
  String? icon;

  WeatherModelWeather({
    this.id,
    this.main,
    this.description,
    this.icon,
  });
  WeatherModelWeather.fromJson(Map<String, dynamic> json) {
    id = json['id']?.toInt();
    main = json['main']?.toString();
    description = json['description']?.toString();
    icon = json['icon']?.toString();
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['main'] = main;
    data['description'] = description;
    data['icon'] = icon;
    return data;
  }
}
