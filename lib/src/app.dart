import 'package:flutter/material.dart';

class App extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return AppState();
  }
}

class AppState extends State<App> {
  int counter = 1;

  Widget build(context) {
    return MaterialApp(
        home: Scaffold(
      body: Text('${counter}'),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () {
            setState(() {
              counter += 1;
            });
          }),
      appBar: AppBar(
        title: const Text('Let See some images!'),
      ),
    ));
  }
}
