import 'dart:convert';

InputGeminiModel inputGeminiModelFromJson(String str) => InputGeminiModel.fromJson(json.decode(str));

String inputGeminiModelToJson(InputGeminiModel data) => json.encode(data.toJson());

class InputGeminiModel {
  final List<Content>? contents;

  InputGeminiModel({
    this.contents,
  });

  factory InputGeminiModel.fromJson(Map<String, dynamic> json) => InputGeminiModel(
    contents: json["contents"] == null ? [] : List<Content>.from(json["contents"]!.map((x) => Content.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "contents": contents == null ? [] : List<dynamic>.from(contents!.map((x) => x.toJson())),
  };
}

class Content {
  final List<Part>? parts;

  Content({
    this.parts,
  });

  factory Content.fromJson(Map<String, dynamic> json) => Content(
    parts: json["parts"] == null ? [] : List<Part>.from(json["parts"]!.map((x) => Part.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "parts": parts == null ? [] : List<dynamic>.from(parts!.map((x) => x.toJson())),
  };
}

class Part {
  String? text;

  Part({
    this.text,
  });

  factory Part.fromJson(Map<String, dynamic> json) => Part(
    text: json["text"],
  );

  Map<String, dynamic> toJson() => {
    "text": text,
  };
}
