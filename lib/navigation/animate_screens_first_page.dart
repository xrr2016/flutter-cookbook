import 'package:flutter/material.dart';
import 'package:flutter_cookbook/navigation/animate_screens_second_page.dart';

class AnimateScreensFirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animate a widget across screens first'),
      ),
      body: GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return AnimateScreensSecondPage();
          }));
        },
        child: Hero(
          tag: 'imgHero',
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.network(
                'https://picsum.photos/250?image=9',
                fit: BoxFit.cover,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
