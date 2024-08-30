import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  Widget build(context) {
    return MaterialApp(
        home: Scaffold(
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () {
            if (kDebugMode) {
              print('Hi There!');
            }
          }),
      appBar: AppBar(
        title: const Text('Let See some images!'),
      ),
    ));
  }
}
