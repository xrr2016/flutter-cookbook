import 'package:flutter/material.dart';

class PassArgumentsPage extends StatelessWidget {
  static const routeName = '/passArguments';

  final String title;
  final String message;

  const PassArgumentsPage({
    Key key,
    @required this.title,
    @required this.message,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Text(message),
      ),
    );
  }
}
