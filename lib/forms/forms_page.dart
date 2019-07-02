import 'package:flutter/material.dart';
import 'package:flutter_cookbook/forms/focus_text_page.dart';
import 'package:flutter_cookbook/forms/form_page.dart';
import 'package:flutter_cookbook/forms/handle_change_page.dart';
import 'package:flutter_cookbook/forms/retrive_text_page.dart';
import 'package:flutter_cookbook/forms/text_field_page.dart';

class FormsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Forms'),
      ),
      body: ListView(children: [
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
      ]),
    );
  }
}
