import 'package:get_it/get_it.dart';

import '../configs/network_config.dart';
import 'app_injector.dart';

class NetworkDI{
  NetworkDI._();
  static Future<void> init(GetIt injector, {required BuildMode buildMode}) async {
    getIt.registerLazySingleton(() => NetWorkMode(mode: buildMode));
  }
}