import 'dart:convert';

import 'package:flutter/material.dart';

class CityList extends StatefulWidget {
  final List location;
  const CityList({Key? key, required this.location}) : super(key: key);

  @override
  CityListState createState() => CityListState();
}

class CityListState extends State<CityList> {
  late List data;

  List<String> locationName = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('City List')),
      body: FutureBuilder(
        future:
            DefaultAssetBundle.of(context).loadString('assets/city_list.json'),
        builder: (context, snapshot) {
          // Decode the SON
          var response = json.decode(snapshot.data.toString());

          // locationName.add(Data[0]['name']);
          // var loc = widget.location.add(Data[0]['name']);
          // print(Data[0]['name']);

          // for (var i = 0; i < Data.length; i++) {
          //   locationName.add(Data[i]['name']);
          // }
          // print(loc);

          return ListView.builder(
            // Build the ListView

            itemBuilder: (BuildContext context, int index) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(response[index]['name']),
                  // Text('Id: ${response[index]['id']}'),
                  // Text("Country: " + response[index]['country']),
                ],
              );
            },
            itemCount: response == null ? 0 : response.length,
          );
        },
      ),
    );
  }
}
