import 'package:json_annotation/json_annotation.dart';

part 'photo.g.dart';

@JsonSerializable(explicitToJson: true)
class Photo {
  final num id;
  final String webformatURL;
  final num views;
  final num likes;

  Photo({
    required this.id,
    required this.webformatURL,
    required this.views,
    required this.likes,
  });

  factory Photo.fromJson(Map<String, dynamic> json) => _$PhotoFromJson(json);

  Map<String, dynamic> toJson() => _$PhotoToJson(this);
}
