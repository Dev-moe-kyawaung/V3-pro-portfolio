// Portfolio repository implementation
import '../models/app_model.dart';
import '../models/profile_model.dart';
import '../models/project_model.dart';
import '../models/service_model.dart';
import '../models/social_link_model.dart';
import '../sources/local/portfolio_local_source.dart';

abstract class PortfolioRepository {
  Future<ProfileModel> getProfile();
  Future<List<ProjectModel>> getProjects();
  Future<List<ServiceModel>> getServices();
  Future<List<SocialLinkModel>> getSocialLinks();
  Future<List<AppModel>> getApps();
}

class PortfolioRepositoryImpl implements PortfolioRepository {
  PortfolioRepositoryImpl(this._localSource);

  final PortfolioLocalSource _localSource;

  @override
  Future<ProfileModel> getProfile() => _localSource.getProfile();

  @override
  Future<List<ProjectModel>> getProjects() => _localSource.getProjects();

  @override
  Future<List<ServiceModel>> getServices() => _localSource.getServices();

  @override
  Future<List<SocialLinkModel>> getSocialLinks() => _localSource.getSocialLinks();

  @override
  Future<List<AppModel>> getApps() => _localSource.getApps();
}
