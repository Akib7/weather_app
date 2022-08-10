import 'package:flutter/material.dart';
import 'package:weather_app/model/weather_model.dart';

class ResultView extends StatefulWidget {
  final WeatherModel result;
  const ResultView({Key? key, required this.result}) : super(key: key);

  @override
  State<ResultView> createState() => _ResultViewState();
}

class _ResultViewState extends State<ResultView> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return SizedBox(
      height: height,
      width: width,
      child: Center(child: Text("lat - ${widget.result.coord!.lat}")),
    );
  }
}
