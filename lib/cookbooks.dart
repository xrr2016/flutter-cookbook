import 'package:flutter/material.dart';
import 'package:flutter_cookbook/animation/animation_container_page.dart';

class CookBooks extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cook Books'),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text('Animate the properties of a container'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AnimatedContainerPage(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
