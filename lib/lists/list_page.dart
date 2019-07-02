import 'package:flutter/material.dart';
import 'package:flutter_cookbook/lists/grid_list_page.dart';
import 'package:flutter_cookbook/lists/types_list_page.dart';

class Listpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lists'),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text('Create a grid list'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => GridListPage(),
                ),
              );
            },
          ),
          ListTile(
            title: Text('Create lists with different types of items'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => TypesListPage(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
