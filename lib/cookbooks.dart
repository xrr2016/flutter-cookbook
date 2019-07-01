import 'package:flutter/material.dart';
import 'package:flutter_cookbook/animation/animation_container_page.dart';
import 'package:flutter_cookbook/animation/fade_widget_page.dart';
import 'package:flutter_cookbook/design/custom_font_page.dart';
import 'package:flutter_cookbook/design/drawer_page.dart';
import 'package:flutter_cookbook/design/font_package_page.dart';
import 'package:flutter_cookbook/design/snackbar_page.dart';
import 'package:flutter_cookbook/design/tabs_page.dart';
import 'package:flutter_cookbook/design/theme_data_page.dart';
import 'package:flutter_cookbook/design/update_ui_%20orientation_page.dart';
import 'package:flutter_cookbook/forms/focus_text_page.dart';
import 'package:flutter_cookbook/forms/form_page.dart';
import 'package:flutter_cookbook/forms/handle_change_page.dart';
import 'package:flutter_cookbook/forms/retrive_text_page.dart';
import 'package:flutter_cookbook/forms/text_field_page.dart';
import 'package:flutter_cookbook/gestures/handle_taps_page.dart';
import 'package:flutter_cookbook/gestures/ink_well_page.dart';
import 'package:flutter_cookbook/gestures/swipe_dismiss_page.dart';

class CookBooks extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cook Books'),
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(bottom: 50),
            child: Column(
              children: <Widget>[
                ListTile(
                  title: Text('Animate the properties of a container'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AnimatedContainerPage(),
                      ),
                    );
                  },
                ),
                ListTile(
                  title: Text('Fade a widget in and out'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => FadeWidgetPage(),
                      ),
                    );
                  },
                ),
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
                ListTile(
                  title: Text('Build a form with validation'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => FormPage(),
                      ),
                    );
                  },
                ),
                ListTile(
                  title: Text('Create and style a text field'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => TextFieldPage(),
                      ),
                    );
                  },
                ),
                ListTile(
                  title: Text('Focus and text fields'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => FocusTextPage(),
                      ),
                    );
                  },
                ),
                ListTile(
                  title: Text('Handle changes to a text field'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HandleChangePage(),
                      ),
                    );
                  },
                ),
                ListTile(
                  title: Text('Retrieve the value of a text field'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => RetrieveTextPage(),
                      ),
                    );
                  },
                ),
                ListTile(
                  title: Text('Add Material touch ripples'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => InkWellPage(),
                      ),
                    );
                  },
                ),
                ListTile(
                  title: Text('Handle taps'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HandleTapsPage(),
                      ),
                    );
                  },
                ),
                ListTile(
                  title: Text('Implement swipe to dismiss'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SwipeDimissPage(),
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
