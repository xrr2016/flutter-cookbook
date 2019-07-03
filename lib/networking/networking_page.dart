import 'package:flutter/material.dart';
import 'package:flutter_cookbook/networking/authenticated_request_page.dart';
import 'package:flutter_cookbook/networking/fetch_data_page.dart';
import 'package:flutter_cookbook/networking/parse_json_page.dart';

class NetworkingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Networking'),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text('Fetch data from the internet'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => FetchDataPage()),
              );
            },
          ),
          ListTile(
            title: Text('Make authenticated requests'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => AuthenticatedRequestsPage()),
              );
            },
          ),
          ListTile(
            title: Text('Parse JSON in the background'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ParseJsonPage()),
              );
            },
          )
        ],
      ),
    );
  }
}
