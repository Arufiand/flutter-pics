import 'package:flutter/material.dart';
import 'package:http/http.dart' show get;
import 'models/image_model.dart';
import 'dart:convert';

class App extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return AppState();
  }
}

class AppState extends State<App> {
  int counter = 0;
  List<ImageModel> images = [];

  void fetchImage() async {
    counter++;
    var response = await get(
        Uri.parse('https://jsonplaceholder.typicode.com/photos/${counter}')
            as String);
    var imageModel = ImageModel.fromJson(json.decode(response.body));
    setState(() {
      images.add(imageModel);
    });
  }

  @override
  Widget build(context) {
    return MaterialApp(
        home: Scaffold(
      body: Text('${counter}'),
      floatingActionButton: const FloatingActionButton(
        onPressed: fetchImage,
        child: Icon(Icons.add),
      ),
      appBar: AppBar(
        title: const Text('Let See some images!'),
      ),
    ));
  }
}

Future<String> get(String url) {}
