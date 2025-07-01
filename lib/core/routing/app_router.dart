import 'package:comeback/core/di/dependency_injection.dart';
import 'package:comeback/core/routing/routes.dart';
import 'package:comeback/features/home/ui/home_screen.dart';
import 'package:comeback/features/login/logic/cubit/login_cubit.dart';
import 'package:comeback/features/login/ui/login_screen.dart';
import 'package:comeback/features/onboarding/onboarding_screen.dart';
import 'package:comeback/features/signup/logic/cubit/sign_up_cubit.dart';
import 'package:comeback/features/signup/ui/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoarding:
        return MaterialPageRoute(builder: (_) => OnboardingScreen());
      case Routes.login:
        return MaterialPageRoute(
          builder:
              (_) => BlocProvider(
                create: (context) => getIt<LoginCubit>(),
                child: const LoginScreen(),
              ),
        );
      case Routes.signUp:
        return MaterialPageRoute(
          builder:
              (_) => BlocProvider(
                create: (context) => getIt<SignUpCubit>(),
                child: SignupScreen(),
              ),
        );
      case Routes.home:
        return MaterialPageRoute(builder: (_) => HomeScreen());

      default:
        return MaterialPageRoute(
          builder:
              (_) => Scaffold(
                body: Center(
                  child: Text('No route defined for ${settings.name}'),
                ),
              ),
        );
    }
  }
}
