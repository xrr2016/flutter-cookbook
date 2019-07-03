import 'package:flutter/material.dart';
import 'package:flutter_cookbook/navigation/navigate_second_page.dart';

class NavigateFirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Route'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Open route'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => NavigateSecondPage(),
              ),
            );
          },
        ),
      ),
    );
  }
}
