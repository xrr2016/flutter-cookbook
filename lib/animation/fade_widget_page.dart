import "package:flutter/material.dart";

class FadeWidgetPage extends StatefulWidget {
  @override
  _FadeWidgetPageState createState() => _FadeWidgetPageState();
}

class _FadeWidgetPageState extends State<FadeWidgetPage> {
  bool _visible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fade a widget in and out'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            AnimatedOpacity(
              opacity: _visible ? 1.0 : 0.0,
              duration: Duration(milliseconds: 500),
              child: Container(
                width: 200.0,
                height: 200.0,
                color: Colors.blue,
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Toggle Opacity',
        child: Icon(Icons.flip),
        onPressed: () {
          setState(() {
            _visible = !_visible;
          });
        },
      ),
    );
  }
}
