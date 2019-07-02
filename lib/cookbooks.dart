import 'package:flutter/material.dart';
import 'package:flutter_cookbook/animation/animation_page.dart';
import 'package:flutter_cookbook/design/design_page.dart';
import 'package:flutter_cookbook/forms/forms_page.dart';
import 'package:flutter_cookbook/gestures/gestures_page.dart';
import 'package:flutter_cookbook/images/images_page.dart';
import 'package:flutter_cookbook/lists/list_page.dart';
import 'package:flutter_cookbook/maintenance/maintenance_page.dart';
import 'package:flutter_cookbook/navigation/navigation_page.dart';
import 'package:flutter_cookbook/plugins/plugins_page.dart';

class CookBooks extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cook Book'),
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(bottom: 50),
            child: Column(
              children: <Widget>[
                ListTile(
                  leading: Icon(Icons.movie),
                  title: Text('Animation'),
                  trailing: Icon(Icons.arrow_forward),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AnimationPage(),
                      ),
                    );
                  },
                ),
                ListTile(
                  leading: Icon(Icons.shopping_basket),
                  title: Text('Design'),
                  trailing: Icon(Icons.arrow_forward),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DesignPage(),
                      ),
                    );
                  },
                ),
                ListTile(
                  leading: Icon(Icons.format_align_center),
                  title: Text('Forms'),
                  trailing: Icon(Icons.arrow_forward),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => FormsPage(),
                      ),
                    );
                  },
                ),
                ListTile(
                  leading: Icon(Icons.healing),
                  title: Text('Gestures'),
                  trailing: Icon(Icons.arrow_forward),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => GesturesPage(),
                      ),
                    );
                  },
                ),
                ListTile(
                  leading: Icon(Icons.image),
                  title: Text('Images'),
                  trailing: Icon(Icons.arrow_forward),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ImagesPage(),
                      ),
                    );
                  },
                ),
                ListTile(
                  leading: Icon(Icons.list),
                  title: Text('Lists'),
                  trailing: Icon(Icons.arrow_forward),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Listpage(),
                      ),
                    );
                  },
                ),
                ListTile(
                  leading: Icon(Icons.bug_report),
                  title: Text('Maintenance'),
                  trailing: Icon(Icons.arrow_forward),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MaintenancePage(),
                      ),
                    );
                  },
                ),
                ListTile(
                  leading: Icon(Icons.navigation),
                  title: Text('Navigation'),
                  trailing: Icon(Icons.arrow_forward),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => NavigationPage(),
                      ),
                    );
                  },
                ),
                ListTile(
                  leading: Icon(Icons.photo_album),
                  title: Text('Plugins'),
                  trailing: Icon(Icons.arrow_forward),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PluginsPage(),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
