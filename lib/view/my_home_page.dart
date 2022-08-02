import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:weather_app/model/weather_model.dart';
import 'package:http/http.dart' as http;
import 'package:weather_app/repository/api/app_url.dart';
import 'package:weather_app/viewModel/result_view.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Future<WeatherModel> fetchData() async {
    final response = await http.get(Uri.parse(AppUrl.apiKey));

    final dataModel = WeatherModel.fromJson(jsonDecode(response.body));

    return dataModel;
  }

  @override
  void initState() {
    super.initState();
    weatherData = fetchData();
  }

  late Future<WeatherModel> weatherData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('Weather App')),
        ),
        body: FutureBuilder<WeatherModel>(
          future: weatherData,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              final result = snapshot.data!;
              return ResultView(result: result);
            } else if (snapshot.hasError) {
              return Text('${snapshot.error}');
            }
            return const Center(child: CircularProgressIndicator());
          },
        ));
  }
}
