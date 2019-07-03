import 'package:flutter/material.dart';
import 'package:flutter_cookbook/navigation/animate_screens_first_page.dart';

class NavigationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Navigation'),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text('Animate a widget across screens'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AnimateScreensFirstPage(),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
