import 'dart:async';

import 'package:flutter_cookbook/persistence/dog.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

Future<Database> createDatabase({String dbName = ''}) async {
  var dbPath = await getDatabasesPath();

  var path = join(dbPath, dbName);

  await deleteDatabase(path);

  Database database = await openDatabase(
    path,
    version: 1,
    onCreate: (db, version) {
      return db.execute(
        "CREATE TABLE dogs(id INTEGER PRIMARY KEY, name TEXT, age INTEGER)",
      );
    },
  );

  return database;
}

Future<List<Dog>> getDogs(Database database) async {
  final Database db = database;
  final List<Map<String, dynamic>> maps = await db.query('dogs');

  return List.generate(maps.length, (i) {
    return Dog(
      id: maps[i]['id'],
      name: maps[i]['name'],
      age: maps[i]['age'],
    );
  });
}

Future<Dog> getDog(Database database, int id) async {
  final Database db = database;

  List<Map> map = await db.query(
    'dogs',
    where: 'id = ?',
    whereArgs: [id],
    limit: 1,
  );

  return Dog(
    id: map[0]['id'],
    name: map[0]['name'],
    age: map[0]['age'],
  );
}

Future<void> insertDog(Dog dog, Database database) async {
  final Database db = database;

  await db.insert(
    'dogs',
    dog.toMap(),
    conflictAlgorithm: ConflictAlgorithm.replace,
  );
}

Future<void> updateDog(Dog dog, Database database) async {
  final db = database;

  await db.update(
    'dogs',
    dog.toMap(),
    where: "id = ?",
    whereArgs: [dog.id],
  );
}

Future<void> deleteDog(int id, Database database) async {
  final db = database;

  await db.delete(
    'dogs',
    where: "id = ?",
    whereArgs: [id],
  );
}
