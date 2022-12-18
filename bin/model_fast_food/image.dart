
import 'dart:convert';

class Image {
  String file;
  String url;
  
  Image({
    required this.file,
    required this.url,
  });

  Map<String, dynamic> toMap(){
    return{
      "file": file,
      "url": url,
    };
  }

  String toJson() => jsonEncode(toMap());

  factory Image.fromMap(Map<String, dynamic> map){
    return Image(
      file: map["file"] ?? "",
      url: map["url"] ?? "",
    );
  }

  factory Image.fromJson(String json) => Image.fromMap(jsonDecode(json));

  @override
  String toString() => 'Image(file: $file, url: $url)';
}
