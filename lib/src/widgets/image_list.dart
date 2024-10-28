import 'package:flutter/material.dart';
import '../models/image_model.dart';

class ImageList extends StatelessWidget {
  final List<ImageModel> images;

  ImageList(this.images);

  Widget build(context) {
    return ListView.builder(
      itemCount: images.length,
      itemBuilder: (context, int index) {
        print(Text(images[index].url));
        // return Text(images[index].url);
        return Image.network(
          images[index].url,
          errorBuilder: (context, error, stackTrace) {
            print('error $error');
            print('Stack Trace $stackTrace');
            return Text('Error while fetching image'); // Your placeholder image
          },
        );
      },
    );
  }
}
