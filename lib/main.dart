// Main entry point for the Flutter application
import 'package:flutter/material.dart';

import 'app/app.dart';
import 'app/di/injector.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Injector.init();
  runApp(const App());
}
