import 'package:base_flutter_bloc/presentation/app_routes.dart';
import 'package:base_flutter_bloc/presentation/screens/login/login_screen.dart';
import 'package:base_flutter_bloc/presentation/screens/splash/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class ScreenDI {
  ScreenDI._();

  static Future<void> init(GetIt injector) async {
    injector.registerFactory<Widget>(() => const SplashScreen(),
        instanceName: RouteConst.splashRoute);

    injector.registerFactory<Widget>(() => const LoginScreen(),
        instanceName: RouteConst.loginRoute);
  }
}
