import 'package:flutter/material.dart';
import 'package:flutter_cookbook/persistence/key_value_page.dart';
import 'package:flutter_cookbook/persistence/read_write_page.dart';
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
          ListTile(
            title: Text('Read and write files'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ReadWritePage(),
                ),
              );
            },
          ),
          ListTile(
            title: Text('Store key-value data on disk'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => KeyValuePage(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
