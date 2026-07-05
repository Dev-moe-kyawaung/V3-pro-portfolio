// Project data model
import 'package:json_annotation/json_annotation.dart';

part 'project_model.g.dart';

@JsonSerializable()
class ProjectModel {
  final String title;
  final String description;
  final String imageUrl;
  final List<String> tags;
  final String repoUrl;
  final String liveUrl;

  const ProjectModel({
    required this.title,
    required this.description,
    required this.imageUrl,
    required this.tags,
    required this.repoUrl,
    required this.liveUrl,
  });

  factory ProjectModel.fromJson(Map<String, dynamic> json) =>
      _$ProjectModelFromJson(json);

  Map<String, dynamic> toJson() => _$ProjectModelToJson(this);
}
