import 'package:flutter/material.dart';
import '../models/image_model.dart';

class ImageList extends StatelessWidget {
  final List<ImageModel> images;

  ImageList(this.images);

  Widget build(context) {
    return ListView.builder(
      itemCount: images.length,
      itemBuilder: (context, int index) {
        // return Text(images[index].url);
        return Container(
            margin: const EdgeInsets.all(20.0),
            child: Image.network(
              images[index].url,
              errorBuilder: (context, error, stackTrace) {
                return const Text(
                    'Error while fetching image'); // Your placeholder image
              },
            ));
        // return
      },
    );
  }
}
