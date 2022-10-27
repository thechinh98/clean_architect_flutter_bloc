import 'package:get_it/get_it.dart';
import 'package:hive_flutter/adapters.dart';

import '../model/app_user_model.dart';

class AppDB {
  static Future<void> init(GetIt injector) async {
    await Hive.initFlutter();
    Hive.registerAdapter(AppUserModelAdapter());
  }
}
