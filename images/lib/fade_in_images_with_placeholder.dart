// Fade in images with a placeholder
// https://flutter.dev/docs/cookbook/images/fading-in-images
// fade_in_images_with_placeholder.dart -> main.dart

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = 'Fade in images';

    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Center(
          child: FadeInImage.assetNetwork(
            placeholder: 'assets/loading.gif',
            fadeInDuration: Duration(seconds: 2),
            image: 'https://picsum.photos/250?image=2',
          ),
        ),
      ),
    );
  }
}
