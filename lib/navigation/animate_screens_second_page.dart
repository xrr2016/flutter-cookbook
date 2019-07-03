import 'package:flutter/material.dart';

class AnimateScreensSecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Hero(
            tag: 'imgHero',
            child: Container(
              width: double.infinity,
              child: Image.network(
                'https://picsum.photos/250?image=9',
                fit: BoxFit.cover,
              ),
            ),
          ),
          RaisedButton(
            child: Text('back'),
            onPressed: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
