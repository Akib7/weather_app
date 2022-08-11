class WeatherModelClouds {
/*
{
  "all": 48
} 
*/

  int? all;

  WeatherModelClouds({
    this.all,
  });
  WeatherModelClouds.fromJson(Map<String, dynamic> json) {
    all = json['all']?.toInt();
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['all'] = all;
    return data;
  }
}
