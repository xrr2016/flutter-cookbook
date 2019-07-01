import 'package:flutter/material.dart';

class InternetImagePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Display images from the internet'),
      ),
      body: ListView(
        children: <Widget>[
          Image.network(
            'https://picsum.photos/250?image=9',
          ),
          Image.network(
            'https://media.giphy.com/media/fvMIKfufAO45Fi51Fq/giphy.gif',
          )
        ],
      ),
    );
  }
}
