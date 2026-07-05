// Dependency injection setup
import 'package:flutter/material.dart';

import '../../data/repositories/portfolio_repository_impl.dart';
import '../../data/sources/local/portfolio_local_source.dart';
import '../../data/sources/remote/github_remote_source.dart';
import '../../data/sources/remote/gravatar_remote_source.dart';
import '../../data/state/portfolio_state.dart';

class Injector {
  Injector._();

  static late final PortfolioRepositoryImpl portfolioRepository;
  static late final PortfolioState portfolioState;
  static late final GitHubRemoteSource githubRemoteSource;
  static late final GravatarRemoteSource gravatarRemoteSource;

  static void init() {
    final localSource = PortfolioLocalSource();

    githubRemoteSource = const GitHubRemoteSource();
    gravatarRemoteSource = const GravatarRemoteSource();
    portfolioRepository = PortfolioRepositoryImpl(localSource);
    portfolioState = PortfolioState(portfolioRepository);
  }
}
