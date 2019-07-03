import 'package:flutter/material.dart';

class PushNamePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Navigate with named routes'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: RaisedButton(
              child: Text('Second Page'),
              onPressed: () {
                Navigator.pushNamed(context, '/second');
              },
            ),
          )
        ],
      ),
    );
  }
}
