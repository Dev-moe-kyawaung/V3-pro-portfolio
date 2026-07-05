// Main app widget configuration
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'di/injector.dart';
import 'router/app_router.dart';
import 'theme/app_theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => Injector.portfolioState..loadData(),
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Portfolio Starter',
        theme: AppTheme.lightTheme,
        darkTheme: AppTheme.darkTheme,
        themeMode: ThemeMode.dark,
        routerConfig: AppRouter.router,
      ),
    );
  }
}
