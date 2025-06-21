import 'package:comeback/core/di/dependency_injection.dart';
import 'package:comeback/core/routing/app_router.dart';
import 'package:comeback/doc_app.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  // Initialize dependency injection  
   setupGetIt();
  runApp(DocApp(appRouter: AppRouter(),));
}
