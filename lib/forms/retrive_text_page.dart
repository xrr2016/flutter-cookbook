import 'package:flutter/material.dart';

class RetrieveTextPage extends StatefulWidget {
  @override
  _RetrieveTextPageState createState() => _RetrieveTextPageState();
}

class _RetrieveTextPageState extends State<RetrieveTextPage> {
  final _myController = TextEditingController();

  @override
  void dispose() {
    _myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Retrieve the value of a text field'),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(12.0),
          child: TextField(
            controller: _myController,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          return showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                content: Text(_myController.text),
              );
            },
          );
        },
        tooltip: 'Show me the value!',
        child: Icon(Icons.text_fields),
      ),
    );
  }
}
