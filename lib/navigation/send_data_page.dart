import 'package:flutter/material.dart';
import 'package:flutter_cookbook/navigation/todo_detail_page.dart';

class Todo {
  final String title;
  final String description;

  Todo(this.title, this.description);
}

final todos = List<Todo>.generate(
  20,
  (i) => Todo(
        'Todo $i',
        'A description of what needs to be done for Todo $i',
      ),
);

class SendDataPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Send data to a new screen'),
      ),
      body: ListView.builder(
        itemCount: todos.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(todos[index].title),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => TodoDetailPage(todo: todos[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
