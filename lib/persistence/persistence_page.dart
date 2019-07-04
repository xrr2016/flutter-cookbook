import 'package:flutter/material.dart';
import 'package:flutter_cookbook/persistence/sqlite_page.dart';

class PersistencePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Persistence'),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text('Persist data with SQLite'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SqlitePage()),
              );
            },
          ),
        ],
      ),
    );
  }
}
