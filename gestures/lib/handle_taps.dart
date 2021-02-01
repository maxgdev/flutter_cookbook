// Handle taps
// https://flutter.dev/docs/cookbook/gestures/handling-taps
// handle_taps.dart

// Create the button.
// Wrap it in a GestureDetector that an onTap() callback.

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = 'Handle Taps Demo';

    return MaterialApp(
      title: title,
      home: MyHomePage(title: title),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  MyHomePage({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(child: MyButton()),
    );
  }
}

class MyButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // The GestureDetector wraps the button.
    return GestureDetector(
      // When the child is tapped, show a snackbar.
      onTap: () {
        final snackBar = SnackBar(content: Text("You Tapped the Button"));
        Scaffold.of(context).showSnackBar(snackBar);
      },
      // The custom button
      child: Container(
        padding: EdgeInsets.all(22.0),
        decoration: BoxDecoration(
          color: Theme.of(context).buttonColor,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Text('Tap Button'),
      ),
    );
  }
}