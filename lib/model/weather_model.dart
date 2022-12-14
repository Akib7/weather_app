import 'package:weather_app/model/coords_model.dart';
import 'package:weather_app/model/sys_model.dart';

import 'clouds_model.dart';
import 'main_model.dart';
import 'weather_weather_model.dart';
import 'wind_model.dart';

///
/// Code generated by jsonToDartModel https://ashamp.github.io/jsonToDartModel/
///

class WeatherModel {
/*
{
  "coord": {
    "lon": 145.7667,
    "lat": -16.9167
  },
  "weather": [
    {
      "id": 802,
      "main": "Clouds",
      "description": "scattered clouds",
      "icon": "03n"
    }
  ],
  "base": "stations",
  "main": {
    "temp": 292.43,
    "feels_like": 292.76,
    "temp_min": 292.43,
    "temp_max": 292.43,
    "pressure": 1017,
    "humidity": 90,
    "sea_level": 1017,
    "grnd_level": 1017
  },
  "visibility": 10000,
  "wind": {
    "speed": 3.78,
    "deg": 147,
    "gust": 6.18
  },
  "clouds": {
    "all": 48
  },
  "dt": 1660224956,
  "sys": {
    "country": "AU",
    "sunrise": 1660163875,
    "sunset": 1660205201
  },
  "timezone": 36000,
  "id": 2172797,
  "name": "Cairns",
  "cod": 200
} 
*/

  WeatherModelCoord? coord;
  List<WeatherModelWeather?>? weather;
  String? base;
  WeatherModelMain? main;
  int? visibility;
  WeatherModelWind? wind;
  WeatherModelClouds? clouds;
  int? dt;
  WeatherModelSys? sys;
  int? timezone;
  int? id;
  String? name;
  int? cod;

  WeatherModel({
    this.coord,
    this.weather,
    this.base,
    this.main,
    this.visibility,
    this.wind,
    this.clouds,
    this.dt,
    this.sys,
    this.timezone,
    this.id,
    this.name,
    this.cod,
  });
  WeatherModel.fromJson(Map<String, dynamic> json) {
    coord = (json['coord'] != null)
        ? WeatherModelCoord.fromJson(json['coord'])
        : null;
    if (json['weather'] != null) {
      final v = json['weather'];
      final arr0 = <WeatherModelWeather>[];
      v.forEach((v) {
        arr0.add(WeatherModelWeather.fromJson(v));
      });
      weather = arr0;
    }
    base = json['base']?.toString();
    main =
        (json['main'] != null) ? WeatherModelMain.fromJson(json['main']) : null;
    visibility = json['visibility']?.toInt();
    wind =
        (json['wind'] != null) ? WeatherModelWind.fromJson(json['wind']) : null;
    clouds = (json['clouds'] != null)
        ? WeatherModelClouds.fromJson(json['clouds'])
        : null;
    dt = json['dt']?.toInt();
    sys = (json['sys'] != null) ? WeatherModelSys.fromJson(json['sys']) : null;
    timezone = json['timezone']?.toInt();
    id = json['id']?.toInt();
    name = json['name']?.toString();
    cod = json['cod']?.toInt();
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    if (coord != null) {
      data['coord'] = coord!.toJson();
    }
    if (weather != null) {
      final v = weather;
      final arr0 = [];
      for (var v in v!) {
        arr0.add(v!.toJson());
      }
      data['weather'] = arr0;
    }
    data['base'] = base;
    if (main != null) {
      data['main'] = main!.toJson();
    }
    data['visibility'] = visibility;
    if (wind != null) {
      data['wind'] = wind!.toJson();
    }
    if (clouds != null) {
      data['clouds'] = clouds!.toJson();
    }
    data['dt'] = dt;
    if (sys != null) {
      data['sys'] = sys!.toJson();
    }
    data['timezone'] = timezone;
    data['id'] = id;
    data['name'] = name;
    data['cod'] = cod;
    return data;
  }
}
