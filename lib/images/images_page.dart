import 'package:flutter/material.dart';
import 'package:flutter_cookbook/images/cached_image_page.dart';
import 'package:flutter_cookbook/images/fade_image_page.dart';
import 'package:flutter_cookbook/images/internet_image_page.dart';

class ImagesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Images'),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text('Display images from the internet'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => InternetImagePage(),
                ),
              );
            },
          ),
          ListTile(
            title: Text('Fade in images with a placeholder'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => FadeImagePage(),
                ),
              );
            },
          ),
          ListTile(
            title: Text('Work with cached images'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CachedImagePage(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
