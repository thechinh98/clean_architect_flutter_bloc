import 'package:get_it/get_it.dart';

import '../configs/logger_config.dart';
import '../configs/network_config.dart';
import 'app_injector.dart';

class LoggerDI {
  LoggerDI._();

  static Future<void> init(GetIt injector,
      {required BuildMode buildMode}) async {
    getIt.registerLazySingleton<LoggerConfig>(
            () => LoggerConfig(
          // buildMode: buildMode
        ));
  }
}