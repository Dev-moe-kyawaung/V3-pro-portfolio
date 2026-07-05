// Social link data model
import 'package:json_annotation/json_annotation.dart';

part 'social_link_model.g.dart';

@JsonSerializable()
class SocialLinkModel {
  final String name;
  final String url;
  final String iconName;

  const SocialLinkModel({
    required this.name,
    required this.url,
    required this.iconName,
  });

  factory SocialLinkModel.fromJson(Map<String, dynamic> json) =>
      _$SocialLinkModelFromJson(json);

  Map<String, dynamic> toJson() => _$SocialLinkModelToJson(this);
}
