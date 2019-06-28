import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomFontPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Use a custom font'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '阿里普惠体',
              style: TextStyle(fontFamily: 'Puhuiti'),
            ),
            Text(
              'Use the font in a specific widget',
              style: TextStyle(fontFamily: 'Puhuiti'),
            ),
          ],
        ),
      ),
    );
  }
}
