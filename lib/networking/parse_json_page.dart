import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cookbook/networking/photo.dart';
import 'package:http/http.dart' as http;

List<Photo> parsePhotos(String responseBody) {
  final parsed = json.decode(responseBody).cast<Map<String, dynamic>>();

  return parsed.map<Photo>((json) => Photo.fromJson(json)).toList();
}

Future<List<Photo>> fetchPhotos(http.Client client) async {
  final response =
      await client.get('https://jsonplaceholder.typicode.com/photos');

  return compute(parsePhotos, response.body);
}

class ParseJsonPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Parse JSON in the background'),
      ),
      body: FutureBuilder(
        future: fetchPhotos(http.Client()),
        initialData: [],
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          final List photos = snapshot.data;

          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: photos.length,
              itemBuilder: (context, index) {
                final photo = photos[index];
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    title: Container(
                      decoration: BoxDecoration(),
                      child: Text(
                        photo.title,
                        style: TextStyle(),
                      ),
                    ),
                    leading: Image.network(photo.thumbnailUrl),
                    trailing: Text(photo.id.toString()),
                  ),
                );
              },
            );
          }

          return Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
