import 'package:flutter/material.dart';
import 'package:flutter_cookbook/animation/animation_container_page.dart';
import 'package:flutter_cookbook/animation/fade_widget_page.dart';

class AnimationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animation'),
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
          ListTile(
            title: Text('Fade a widget in and out'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => FadeWidgetPage(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
