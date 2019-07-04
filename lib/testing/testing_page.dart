import 'package:flutter/material.dart';

class TestingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Testing'),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text('Integration'),
            onLongPress: () {},
          ),
          ListTile(
            title: Text('Unit'),
            onLongPress: () {},
          ),
          ListTile(
            title: Text('Widget'),
            onLongPress: () {},
          )
        ],
      ),
    );
  }
}
