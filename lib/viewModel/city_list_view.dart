import 'package:flutter/material.dart';

class CityListView extends StatefulWidget {
  final List<dynamic> result;
  const CityListView({Key? key, required this.result}) : super(key: key);

  @override
  State<CityListView> createState() => _CityListViewState();
}

class _CityListViewState extends State<CityListView> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return ListView(
      children: [
        Column(
          children: [
            SizedBox(
              height: height,
              width: width,
              child: const Text(''),
            ),
          ],
        ),
      ],
    );
  }
}
