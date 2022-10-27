import 'package:get_it/get_it.dart';

import '../../presentation/model/app_user.dart';

class ModelDI{
  ModelDI._();
  static Future<void> init(GetIt injector) async {
    injector.registerLazySingleton(() => AppUser());
  }
}