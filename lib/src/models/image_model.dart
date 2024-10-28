class ImageModel {
  String id;
  String url;
  String title;

  ImageModel(this.id, this.url, this.title);

  ImageModel.fromJson(Map<String, dynamic> parsedJson)
      : id = parsedJson['id'] ?? '0',
        // Provide a default value if necessary
        url = parsedJson['download_url'] ?? 'default_image_url',
        // Provide a default value
        title = parsedJson['author'] ?? 'No Title'; // Provide a default value
// ImageModel.fromJson(Map<String, dynamic> parsedJson) {
//   id = parsedJson['id'];
//   url = parsedJson['url'];
//   title = parsedJson['title'];
// }
}
