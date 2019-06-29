import 'package:flutter/material.dart';

class FocusTextPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Focus and text fields'),
      ),
      body: Column(
        children: <Widget>[
          SizedBox(height: 20),
          MyForm(),
        ],
      ),
    );
  }
}

class MyForm extends StatefulWidget {
  @override
  _MyFormState createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  FocusNode _myFocusNode;

  @override
  void initState() {
    super.initState();
    _myFocusNode = FocusNode();
  }

  @override
  void dispose() {
    _myFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TextField(
          focusNode: _myFocusNode,
        ),
        SizedBox(height: 20),
        RaisedButton(
          child: Icon(Icons.edit),
          onPressed: () {
            FocusScope.of(context).requestFocus(_myFocusNode);
          },
        ),
      ],
    );
  }
}
