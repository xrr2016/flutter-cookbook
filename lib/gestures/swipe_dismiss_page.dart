import 'package:flutter/material.dart';

class SwipeDimissPage extends StatefulWidget {
  @override
  _SwipeDimissPageState createState() => _SwipeDimissPageState();
}

class _SwipeDimissPageState extends State<SwipeDimissPage> {
  final items = List<String>.generate(200, (i) => "Item ${i + 1}");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Implement swipe to dismiss'),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];

          return Dismissible(
            background: Container(
              color: Colors.red,
            ),
            key: Key(item),
            onDismissed: (direction) {
              setState(() {
                items.removeAt(index);
              });
              Scaffold.of(context).showSnackBar(
                SnackBar(content: Text("$item dismissed")),
              );
            },
            child: ListTile(title: Text('${items[index]}')),
          );
        },
      ),
    );
  }
}
