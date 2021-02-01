// Display images from the internet
// https://flutter.dev/docs/cookbook/images/network-image
// display_images_from_internet.dart -> main.dart

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var title = 'Web Images';

    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Center(
          child: ListView(
            children: [
              Image.network('https://picsum.photos/250?image=2'),
              Image.network('https://picsum.photos/250?image=5'),
              Image.network('https://picsum.photos/250?image=9'),
            ],
          ),),
      ),
    );
  }
}