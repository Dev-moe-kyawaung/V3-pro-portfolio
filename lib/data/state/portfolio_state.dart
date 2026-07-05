// import 'package:flutter/material.dart';

import '../models/app_model.dart';
import '../models/profile_model.dart';
import '../models/project_model.dart';
import '../models/service_model.dart';
import '../models/social_link_model.dart';
import '../repositories/portfolio_repository_impl.dart';

class PortfolioState extends ChangeNotifier {
  PortfolioState(this._repository);

  final PortfolioRepository _repository;

  bool _loading = false;
  String? _error;

  ProfileModel? _profile;
  List<ProjectModel> _projects = [];
  List<ServiceModel> _services = [];
  List<SocialLinkModel> _socialLinks = [];
  List<AppModel> _apps = [];

  bool get loading => _loading;
  String? get error => _error;
  ProfileModel? get profile => _profile;
  List<ProjectModel> get projects => _projects;
  List<ServiceModel> get services => _services;
  List<SocialLinkModel> get socialLinks => _socialLinks;
  List<AppModel> get apps => _apps;

  Future<void> loadData() async {
    _loading = true;
    _error = null;
    notifyListeners();

    try {
      _profile = await _repository.getProfile();
      _projects = await _repository.getProjects();
      _services = await _repository.getServices();
      _socialLinks = await _repository.getSocialLinks();
      _apps = await _repository.getApps();
    } catch (e) {
      _error = e.toString();
    } finally {
      _loading = false;
      notifyListeners();
    }
  }
}Portfolio state management
