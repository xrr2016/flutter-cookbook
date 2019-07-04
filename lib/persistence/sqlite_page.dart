import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_cookbook/persistence/dog.dart';
import 'package:flutter_cookbook/persistence/sqlite_curd.dart';
import 'package:sqflite/sqflite.dart';

class SqlitePage extends StatefulWidget {
  @override
  _SqlitePageState createState() => _SqlitePageState();
}

class _SqlitePageState extends State<SqlitePage> {
  List dogs = [];

  Database database;

  @override
  void initState() {
    super.initState();

    createDatabase(dbName: 'doggie_database.db').then((Database db) {
      setState(() {
        database = db;
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Persist data with SQLite'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: Column(
            children: <Widget>[
              FutureBuilder(
                future: getDogs(database),
                initialData: [],
                builder: (BuildContext context, AsyncSnapshot snapshot) {
                  if (snapshot.hasData) {
                    return ListView.builder(
                      itemCount: dogs.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          leading: dogs[index].id,
                          title: dogs[index].name,
                          subtitle: dogs[index].age,
                        );
                      },
                    );
                  }

                  return CircularProgressIndicator();
                },
              ),
              RaisedButton(
                child: Text('Add A Dog'),
                onPressed: () {
                  int id = Random().nextInt(999);

                  final dog = Dog(
                    id: id,
                    name: 'Fido' + id.toString(),
                    age: Random().nextInt(100),
                  );

                  insertDog(dog, database).then((_) {
                    getDogs(database).then((_dogs) {
                      dogs = _dogs;
                      print('----- dogs $dogs');
                    });
                  });
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
