import 'package:comeback/core/di/dependency_injection.dart';
import 'package:comeback/core/routing/app_router.dart';
import 'package:comeback/doc_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(statusBarColor: Colors.white, statusBarIconBrightness: Brightness.dark),
  );
  WidgetsFlutterBinding.ensureInitialized();
  // Initialize dependency injection
  setupGetIt();
  runApp(DocApp(appRouter: AppRouter()));
}
