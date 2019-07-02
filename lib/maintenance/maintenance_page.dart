import 'package:flutter/material.dart';
import 'package:flutter_cookbook/maintenance/report_page.dart';

class MaintenancePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Maintenance'),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text('Report errors to a service'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ReportPage(),
                  ));
            },
          )
        ],
      ),
    );
  }
}
