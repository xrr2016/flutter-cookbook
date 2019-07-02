import 'package:flutter/material.dart';
import 'package:flutter_cookbook/plugins/play_video_page.dart';

class PluginsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Plugins'),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text('Play and pause a video'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PlayVideoPage(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
