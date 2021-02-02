// Flutter Persistence Demo
// Initial clean up after 'flutter create app'
// main.dart
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Persistence Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Persistence Demos')
          ),
        body: Center(
          child: Text('Persistence Demo Body')
        ),
      ),
    );
  }
}

