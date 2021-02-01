// Focus and text fields
// https://flutter.dev/docs/cookbook/forms/focus
// Focus and text fields.dart

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appTitle = 'Create and style a text field';

    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: Text(appTitle),
        ),
        body: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Enter a search Term',
              ),
              autofocus: true,
            ),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Enter your username'
              ),
              // autofocus: true,
            ),
          ],),
      ),
    );
  }
}
