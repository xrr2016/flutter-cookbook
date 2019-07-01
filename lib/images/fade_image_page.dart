import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

class FadeImagePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fade in images with a placeholder'),
      ),
      body: ListView(
        children: <Widget>[
          Image.asset('assets/images/loading.webp'),
          FadeInImage.memoryNetwork(
            placeholder: kTransparentImage,
            image: 'https://media.giphy.com/media/UTY5IdXZBzq3B4jhFq/giphy.gif',
          ),
          FadeInImage.assetNetwork(
            placeholder: 'assets/images/loading.webp',
            image: 'https://media.giphy.com/media/kE8bAdv1AKdSqJf2Rw/giphy.gif',
          ),
        ],
      ),
    );
  }
}
