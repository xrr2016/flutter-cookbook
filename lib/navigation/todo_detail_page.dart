import 'package:flutter/material.dart';
import 'package:flutter_cookbook/navigation/send_data_page.dart';

class TodoDetailPage extends StatelessWidget {
  final Todo todo;

  TodoDetailPage({Key key, @required this.todo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(todo.title),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Text(todo.description),
      ),
    );
  }
}
