class ImageModel {
  int id;
  String url;
  String title;

  ImageModel(this.id, this.url, this.title);

  // ImageModel.fromJson(Map<String, dynamic> parsedJson) {
  //   id = parsedJson['id'];
  //   url = parsedJson['url'];
  //   title = parsedJson['title'];
  // }

  ImageModel.fromJson(Map<String, dynamic> parsedJson)
      : id = parsedJson['id'] ?? 0,
        // Provide a default value if necessary
        url = parsedJson['url'] ?? 'default_image_url',
        // Provide a default value
        title = parsedJson['title'] ?? 'No Title'; // Provide a default value
}
