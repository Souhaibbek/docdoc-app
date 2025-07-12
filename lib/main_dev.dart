import 'package:comeback/core/di/dependency_injection.dart';
import 'package:comeback/core/routing/app_router.dart';
import 'package:comeback/doc_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async{
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(statusBarColor: Colors.white, statusBarIconBrightness: Brightness.dark),
  );
  WidgetsFlutterBinding.ensureInitialized();
  // Initialize dependency injection
  setupGetIt();
  // Ensure screen size is initialized to avoid hidden text or layout bug issues in release mode
  await ScreenUtil.ensureScreenSize();
  runApp(DocApp(appRouter: AppRouter()));
}
