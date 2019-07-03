import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_cookbook/networking/post.dart';
import 'package:http/http.dart' as http;

Future<Post> fetchPost({id = 1}) async {
  final response =
      await http.get('https://jsonplaceholder.typicode.com/posts/$id');

  debugPrint('-------- ${response.body}');

  if (response.statusCode == 200) {
    return Post.fromJson(json.decode(response.body));
  } else {
    throw Exception('Failed to load post');
  }
}

class FetchDataPage extends StatefulWidget {
  @override
  _FetchDataPageState createState() => _FetchDataPageState();
}

class _FetchDataPageState extends State<FetchDataPage> {
  Future<Post> post;

  int postId = 1;

  @override
  void initState() {
    super.initState();
    post = fetchPost();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fetch data from the internet'),
      ),
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 20,
          ),
          FutureBuilder<Post>(
            future: post,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(snapshot.data.title),
                    ),
                    SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(snapshot.data.body),
                    ),
                  ],
                );
              } else if (snapshot.hasError) {
                return Text("${snapshot.error}");
              }

              return CircularProgressIndicator();
            },
          ),
          SizedBox(
            height: 100,
          ),
          Center(
            child: RaisedButton(
              child: Text('New Past'),
              onPressed: () {
                setState(() {
                  postId++;
                  post = fetchPost(id: postId);
                });
              },
            ),
          )
        ],
      ),
    );
  }
}
