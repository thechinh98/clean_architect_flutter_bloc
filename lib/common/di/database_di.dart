import 'package:get_it/get_it.dart';

import '../../data/datasources/local/app_database/app_database.dart';

class DatabaseDI {
  DatabaseDI._();

  static Future<void> init(GetIt injector) async {
    await AppDB.init(injector);
  }
}