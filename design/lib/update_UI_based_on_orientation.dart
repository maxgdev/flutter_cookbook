// Update the UI based on orientation
// https://flutter.dev/docs/cookbook/design/orientation
// update_UI_based_on_orientation.dart
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appTitle = 'Orientation Demo';

    return MaterialApp(
      title: appTitle,
      home: OrientationList(
        title: appTitle,
      ),
    );
  }
}

class OrientationList extends StatelessWidget {
  final String title;

  OrientationList({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: OrientationBuilder(
        builder: (context, orientation) {
          return GridView.count(
            // Create a grid with 2 columns in portrait mode, or 3 columns in
            // landscape mode.
            crossAxisCount: orientation == Orientation.portrait ? 3 : 4,
            // Generate 20 widgets that display their index in the List.
            children: List.generate(20, (index) {
              return Center(
                child: Text(
                  'Item $index',
                  // style: Theme.of(context).textTheme.headline1,
                ),
              );
            }),
          );
        },
      ),
    );
  }
}