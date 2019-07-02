import 'package:flutter/material.dart';
import 'package:flutter_cookbook/lists/grid_list_page.dart';

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
          )
        ],
      ),
    );
  }
}
