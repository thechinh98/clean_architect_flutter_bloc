import 'package:base_flutter_bloc/data/datasources/local/auth_local_datasource.dart';
import 'package:get_it/get_it.dart';

class LocalDataSourceDI {
  LocalDataSourceDI._();

  static Future<void> init(GetIt injector) async {
    injector.registerLazySingleton<AuthLocalDataSource>(
        () => AuthLocalDataSourceImpl(preferences: injector()));
  }
}
