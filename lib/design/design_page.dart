import 'package:flutter/material.dart';
import 'package:flutter_cookbook/design/custom_font_page.dart';
import 'package:flutter_cookbook/design/drawer_page.dart';
import 'package:flutter_cookbook/design/font_package_page.dart';
import 'package:flutter_cookbook/design/snackbar_page.dart';
import 'package:flutter_cookbook/design/tabs_page.dart';
import 'package:flutter_cookbook/design/theme_data_page.dart';
import 'package:flutter_cookbook/design/update_ui_%20orientation_page.dart';

class DesignPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Design'),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text('Add a Drawer to a screen'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DrawerPage(),
                ),
              );
            },
          ),
          ListTile(
            title: Text('Display a snackbar'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SnackbarPage(),
                ),
              );
            },
          ),
          ListTile(
            title: Text('Export fonts from a package'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => FontPackagePage(),
                ),
              );
            },
          ),
          ListTile(
            title: Text('Update the UI based on orientation'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => UpdateUiOrientationPage(),
                ),
              );
            },
          ),
          ListTile(
            title: Text('Use themes to share colors and font styles'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ThemeDataPage(),
                ),
              );
            },
          ),
          ListTile(
            title: Text('Use a custom font'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CustomFontPage(),
                ),
              );
            },
          ),
          ListTile(
            title: Text('Work with tabs'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => TabsPage(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
