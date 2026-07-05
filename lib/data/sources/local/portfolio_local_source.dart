// import 'dart:convert';

import 'package:flutter/services.dart';

import '../../models/app_model.dart';
import '../../models/profile_model.dart';
import '../../models/project_model.dart';
import '../../models/service_model.dart';
import '../../models/social_link_model.dart';

class PortfolioLocalSource {
  Future<Map<String, dynamic>> _loadMap(String path) async {
    final raw = await rootBundle.loadString(path);
    return jsonDecode(raw) as Map<String, dynamic>;
  }

  Future<List<dynamic>> _loadList(String path, String key) async {
    final map = await _loadMap(path);
    return map[key] as List<dynamic>;
  }

  Future<ProfileModel> getProfile() async {
    final map = await _loadMap('assets/data/profile.json');
    return ProfileModel.fromJson(map);
  }

  Future<List<ProjectModel>> getProjects() async {
    final list = await _loadList('assets/data/projects.json', 'projects');
    return list
        .map((e) => ProjectModel.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  Future<List<ServiceModel>> getServices() async {
    final list = await _loadList('assets/data/services.json', 'services');
    return list
        .map((e) => ServiceModel.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  Future<List<SocialLinkModel>> getSocialLinks() async {
    final list = await _loadList('assets/data/social_links.json', 'social_links');
    return list
        .map((e) => SocialLinkModel.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  Future<List<AppModel>> getApps() async {
    final list = await _loadList('assets/data/apps.json', 'apps');
    return list.map((e) => AppModel.fromJson(e as Map<String, dynamic>)).toList();
  }
}Local data source for portfolio
