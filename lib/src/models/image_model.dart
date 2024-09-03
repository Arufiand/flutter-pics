class ImageModel {
  int id;
  String url;
  String title;

  ImageModel(this.id, this.url, this.title);

  // ImageModel.fromJson(Map<String, dynamic> parsedJson){
  //   id = parsedJson.id;
  //   url = parsedJson.url;
  //   title = parsedJson.title;
  // }

  // initialize model
  ImageModel.fromJson(Map<String, dynamic> parsedJson)
      : id = parsedJson.id,
        url = parsedJson.url,
        title = parsedJson.title;
}

extension on Map<String, dynamic> {
  get id => null;

  get url => null;

  get title => null;
}
