import 'dart:convert';

import 'package:flutter/material.dart';

class CityList extends StatefulWidget {
  const CityList({Key? key}) : super(key: key);

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
          var Data = json.decode(snapshot.data.toString());

          // locationName.add(Data);
          // print(Data[0]['name']);

          // for (var i = 0; i < Data.length; i++) {
          //   locationName.add(Data[i]['name']);
          // }
          // print(locationName);

          return ListView.builder(
            // Build the ListView

            itemBuilder: (BuildContext context, int index) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(Data[index]['name']),
                  // Text('Id: ${Data[index]['id']}'),
                  // Text("Country: " + Data[index]['country']),
                ],
              );
            },
            itemCount: Data == null ? 0 : Data.length,
          );
        },
      ),
    );
  }
}
