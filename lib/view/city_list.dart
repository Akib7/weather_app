import 'dart:convert';

import 'package:flutter/material.dart';

class CityList extends StatefulWidget {
  const CityList({Key? key}) : super(key: key);

  @override
  CityListState createState() => CityListState();
}

class CityListState extends State<CityList> {
  late List data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('City List')),
      body: FutureBuilder(
          future: DefaultAssetBundle.of(context)
              .loadString('assets/city_list.json'),
          builder: (context, snapshot) {
            // Decode the SON
            var Data = json.decode(snapshot.data.toString());

            return ListView.builder(
              // Build the ListView
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Text("Name: " + Data[index]['name']),
                      Text('Id: ${Data[index]['id']}'),
                      Text("Country: " + Data[index]['country']),
                    ],
                  ),
                );
              },
              itemCount: Data == null ? 0 : Data.length,
            );
          }),
    );
  }
}
