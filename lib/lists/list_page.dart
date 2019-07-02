import 'package:flutter/material.dart';
import 'package:flutter_cookbook/lists/floating_app_bar_page.dart';
import 'package:flutter_cookbook/lists/grid_list_page.dart';
import 'package:flutter_cookbook/lists/horizontal_list_page.dart';
import 'package:flutter_cookbook/lists/long_lists_page.dart';
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
            title: Text('Create a horizontal list'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HorizontalListPage(),
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
          ListTile(
            title: Text('Place a floating app bar above a list'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => FloatingAppbarpage(),
                ),
              );
            },
          ),
          ListTile(
            title: Text('Work with long lists'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => LongListsPage(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
