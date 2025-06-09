import 'package:comeback/core/routing/routes.dart';
import 'package:comeback/features/login/ui/login_screen.dart';
import 'package:comeback/features/onboarding/onboarding_screen.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoarding:
        return MaterialPageRoute(builder: (_) => OnboardingScreen());
      case Routes.login:
        return MaterialPageRoute(builder: (_) => LoginScreen());
      default:
        return MaterialPageRoute(builder: (_) => Scaffold(
          body: Center(
            child: Text('No route defined for ${settings.name}'), 
        ),),);
    }
  }
}