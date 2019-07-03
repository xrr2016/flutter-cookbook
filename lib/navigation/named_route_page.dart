import 'package:flutter/material.dart';
import 'package:flutter_cookbook/navigation/extract_arguments_page.dart';
import 'package:flutter_cookbook/navigation/pass_auguments_page.dart';
import 'package:flutter_cookbook/navigation/screen_arguments.dart';

class NamedRoutePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pass arguments to a named route'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              child: Text("Navigate to screen that extracts arguments"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ExtractArgumentsPage(),
                    settings: RouteSettings(
                      arguments: ScreenArguments(
                        'Extract Arguments Screen',
                        'This message is extracted in the build method.',
                      ),
                    ),
                  ),
                );
              },
            ),
            RaisedButton(
              child: Text("Navigate to a named that accepts arguments"),
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  PassArgumentsPage.routeName,
                  arguments: ScreenArguments(
                    'Accept Arguments Screen',
                    'This message is extracted in the onGenerateRoute function.',
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
