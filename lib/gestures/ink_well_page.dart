import 'package:flutter/material.dart';

class InkWellPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Material touch ripples'),
      ),
      body: Center(
        child: MyInkWell(),
      ),
    );
  }
}

class MyInkWell extends StatelessWidget {
  const MyInkWell({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Scaffold.of(context).showSnackBar(SnackBar(
          content: Text('Tap'),
          action: SnackBarAction(
            label: '啦啦啦',
            onPressed: () {
              print('啦啦啦');
            },
          ),
        ));
      },
      child: Container(
        padding: EdgeInsets.all(24.0),
        child: Text('Flat Button'),
      ),
    );
  }
}
