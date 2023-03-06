import 'package:base_flutter_bloc/common/di/app_injector.dart';
import 'package:flutter/material.dart';

import '../common/configs/logger_config.dart';

class AppRoute {
  static Route<dynamic> getRoute(RouteSettings settings) {
    logi(message: 'ScreenName: ${settings.name}');
    Widget widget;
    try {
      widget = getIt<Widget>(
        instanceName: settings.name,
        param1: settings.arguments,
      );
    } catch (e) {
      loge(message: e.toString());
      widget = Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text('Không tìm thấy trang'),
        ),
        body: const Center(
          child: Text('Page not found'),
        ),
      );
    }
    return MaterialPageRoute<dynamic>(
        builder: (BuildContext ctx) => widget, settings: settings);
  }
}

class RouteConst {
  static String splashRoute = '/';
  static String loginRoute = '/login';
}
