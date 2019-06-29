import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HandleChangePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Handle changes to a text field'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextField(
                onChanged: (text) {
                  print("First text field: $text");
                },
                decoration: InputDecoration(
                  hintText: 'Enter a search term',
                ),
              ),
            ),
            MyCustomForm()
          ],
        ),
      ),
    );
  }
}

class MyCustomForm extends StatefulWidget {
  @override
  _MyCustomFormState createState() => _MyCustomFormState();
}

class _MyCustomFormState extends State<MyCustomForm> {
  final _myController = TextEditingController();

  _printLatestValue() {
    print("Second text field: ${_myController.text}");
  }

  @override
  void initState() {
    super.initState();

    _myController.addListener(_printLatestValue);
  }

  @override
  void dispose() {
    _myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: TextField(
        controller: _myController,
      ),
    );
  }
}
