import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class KeyValuePage extends StatefulWidget {
  @override
  _KeyValuePageState createState() => _KeyValuePageState();
}

class _KeyValuePageState extends State<KeyValuePage> {
  int _counter = 0;

  @override
  void initState() {
    super.initState();
    _loadCounter();
  }

  _loadCounter() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _counter = (prefs.getInt('counter') ?? 0);
    });
  }

  _incrementCounter() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _counter = (prefs.getInt('counter') ?? 0) + 1;
      prefs.setInt('counter', _counter);
    });
  }

  // _drecrementCounter() async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   setState(() {
  //     _counter = (prefs.getInt('counter') ?? 0) - 1;
  //     prefs.setInt('counter', _counter);
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Store key-value data on disk'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'You have pushed the button this many times:',
              ),
              Text(
                '$_counter',
                style: Theme.of(context).textTheme.display1,
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.plus_one),
          onPressed: () {
            _incrementCounter();
          },
        )

        // Container(
        //   margin: EdgeInsets.only(bottom: 20),
        //   child: Row(
        //     mainAxisAlignment: MainAxisAlignment.end,
        //     children: <Widget>[
        //       FloatingActionButton(
        //         onPressed: () {
        //           _incrementCounter();
        //         },
        //         child: Text(
        //           '+',
        //           style: TextStyle(fontSize: 30),
        //         ),
        //       ),
        //       SizedBox(
        //         width: 20,
        //       ),
        //       FloatingActionButton(
        //         onPressed: () {
        //           _drecrementCounter();
        //         },
        //         child: Text(
        //           '-',
        //           style: TextStyle(fontSize: 30),
        //         ),
        //       ),
        //     ],
        //   ),
        // ),
        );
  }
}
