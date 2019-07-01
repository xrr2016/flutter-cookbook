import 'package:flutter/material.dart';

class HandleTapsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Handle taps'),
        ),
        body: Center(
          child: MyButton(),
        ));
  }
}

class MyButton extends StatelessWidget {
  const MyButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        final snackBar = SnackBar(content: Text("Tap"));

        Scaffold.of(context).showSnackBar(snackBar);
      },
      child: Container(
        width: 200,
        padding: EdgeInsets.all(12.0),
        decoration: BoxDecoration(
          color: Colors.teal,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Text(
          'My Button',
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
