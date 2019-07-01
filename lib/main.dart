import 'package:flutter/material.dart';
import 'package:flutter_cookbook/cookbooks.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CookBooks(),
      theme: ThemeData(
        // brightness: Brightness.dark,
        primaryColor: Colors.lightBlue[800],
        accentColor: Colors.cyan[600],
        fontFamily: 'Montserrat',
        textTheme: TextTheme(
          headline: TextStyle(fontSize: 50.0, fontWeight: FontWeight.bold),
          title: TextStyle(fontSize: 30.0, fontStyle: FontStyle.italic),
          body1: TextStyle(fontSize: 12.0, fontFamily: 'Hind'),
        ),
      ),
    );
  }
}
