import 'dart:io';

import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';

class ReadWritePage extends StatefulWidget {
  @override
  _ReadWritePageState createState() => _ReadWritePageState();
}

class _ReadWritePageState extends State<ReadWritePage> {
  int _counter = 0;

  Future<String> get _localPath async {
    final directory = await getApplicationDocumentsDirectory();

    return directory.path;
  }

  Future<File> get _localFile async {
    final path = await _localPath;
    return File('$path/counter.txt');
  }

  Future<File> writeCounter(int counter) async {
    final file = await _localFile;

    return file.writeAsString('$counter');
  }

  Future<int> readCounter() async {
    try {
      final file = await _localFile;

      String contents = await file.readAsString();

      return int.parse(contents);
    } catch (e) {
      return 0;
    }
  }

  @override
  void initState() {
    super.initState();

    readCounter().then((counter) {
      setState(() {
        _counter = counter;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Read and write files'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              _counter.toString(),
              style: TextStyle(fontSize: 50),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RaisedButton(
                    child: Text(
                      '+',
                      style: TextStyle(fontSize: 40),
                    ),
                    onPressed: () {
                      setState(() {
                        _counter++;
                        writeCounter(_counter).then((val) {
                          print(val);
                        });
                      });
                    }),
                SizedBox(
                  width: 20,
                ),
                RaisedButton(
                  child: Text(
                    '-',
                    style: TextStyle(fontSize: 40),
                  ),
                  onPressed: () {
                    setState(() {
                      _counter--;
                      writeCounter(_counter).then((val) {
                        print(val);
                      });
                    });
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
