import 'package:get_it/get_it.dart';

import '../configs/size_config.dart';
import 'app_injector.dart';

class SizeDI {
  SizeDI._();

  static Future<void> init(GetIt injector) async {
    getIt.registerLazySingleton<SizeConfig>(() => SizeConfig());
  }
}
