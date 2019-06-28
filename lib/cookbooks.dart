import 'package:flutter/material.dart';
import 'package:flutter_cookbook/animation/animation_container_page.dart';
import 'package:flutter_cookbook/animation/fade_widget_page.dart';
import 'package:flutter_cookbook/design/drawer_page.dart';
import 'package:flutter_cookbook/design/snackbar_page.dart';

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
          ListTile(
            title: Text('Add a Drawer to a screen'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DrawerPage(),
                ),
              );
            },
          ),
          ListTile(
            title: Text('Display a snackbar'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SnackbarPage(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
