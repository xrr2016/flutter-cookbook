import 'package:flutter/material.dart';

class FontPackagePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Export fonts from a package')),
      body: Center(
        child: Text(
          'Using the Raleway font from the awesome_package',
          style: TextStyle(
            fontFamily: 'Raleway',
            fontStyle: FontStyle.italic,
            package: 'awesome_package',
          ),
        ),
      ),
    );
  }
}
