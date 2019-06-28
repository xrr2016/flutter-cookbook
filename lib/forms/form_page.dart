import 'package:flutter/material.dart';

class FormPage extends StatefulWidget {
  @override
  _FormPageState createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Build a form with validation'),
      ),
      body: Center(
        child: MyForm(formKey: _formKey),
      ),
    );
  }
}

class MyForm extends StatelessWidget {
  const MyForm({
    Key key,
    @required GlobalKey<FormState> formKey,
  })  : _formKey = formKey,
        super(key: key);

  final GlobalKey<FormState> _formKey;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Enter some text';
                    }
                    return null;
                  },
                ),
              ),
            ],
          ),
        ),
        RaisedButton(
          onPressed: () {
            if (_formKey.currentState.validate()) {
              Scaffold.of(context).showSnackBar(
                SnackBar(
                  content: Text('Processing Data'),
                  action: SnackBarAction(
                    label: 'Close',
                    onPressed: () {},
                  ),
                ),
              );
            }
          },
          child: Text('Submit'),
        ),
      ],
    );
  }
}
