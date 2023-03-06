import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../configs/dio_interceptor_config.dart';
import '../configs/network_config.dart';
import 'app_injector.dart';

class NetworkDI {
  NetworkDI._();

  static Future<void> init(GetIt injector,
      {required BuildMode buildMode}) async {
    getIt.registerLazySingleton(() => NetWorkMode(mode: buildMode));
    getIt.registerLazySingleton<CustomInterceptors>(() => CustomInterceptors());
    getIt.registerFactory<Dio>(() {
      return Dio(
        BaseOptions(
            baseUrl: injector<NetWorkMode>().baseUrl,
            connectTimeout: injector<NetWorkMode>().connectTimeout,
            receiveTimeout: injector<NetWorkMode>().receiveTimeout,
            headers: injector<NetWorkMode>().headers),
      )..interceptors.add(
          injector<CustomInterceptors>(),
        );
    });
  }
}
