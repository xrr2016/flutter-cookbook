import 'package:flutter/material.dart';

class FloatingAppbarpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: Text('Place a floating app bar above a list'),),
      body: CustomScrollView(slivers: <Widget>[
        SliverAppBar(
          title: Text('Floating app bar'),
          floating: true,
          flexibleSpace: Image.asset(
            'assets/images/loading.webp',
            fit: BoxFit.cover,
          ),
          expandedHeight: 188,
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) => ListTile(title: Text('Item #$index')),
            childCount: 1000,
          ),
        )
      ]),
    );
  }
}
