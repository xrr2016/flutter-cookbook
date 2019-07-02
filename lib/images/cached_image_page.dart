import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CachedImagePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Work with cached images'),
      ),
      body: ListView(
        children: <Widget>[
          Center(
            child: CachedNetworkImage(
              height: 200,
              imageUrl:
                  'https://avatars2.githubusercontent.com/u/18013127?s=460&v=4',
              errorWidget: (context, url, error) => new Icon(Icons.error),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Center(
            child: CachedNetworkImage(
              placeholder: (context, url) => CircularProgressIndicator(),
              errorWidget: (context, url, error) => new Icon(Icons.error),
              imageUrl:
                  'https://media.giphy.com/media/pOU5ra0RtUfGzgKjjN/giphy.gif',
            ),
          ),
        ],
      ),
    );
  }
}
