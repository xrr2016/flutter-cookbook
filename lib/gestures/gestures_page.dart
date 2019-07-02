import 'package:flutter/material.dart';
import 'package:flutter_cookbook/gestures/handle_taps_page.dart';
import 'package:flutter_cookbook/gestures/ink_well_page.dart';
import 'package:flutter_cookbook/gestures/swipe_dismiss_page.dart';

class GesturesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gestures'),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text('Add Material touch ripples'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => InkWellPage(),
                ),
              );
            },
          ),
          ListTile(
            title: Text('Handle taps'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HandleTapsPage(),
                ),
              );
            },
          ),
          ListTile(
            title: Text('Implement swipe to dismiss'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SwipeDimissPage(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
