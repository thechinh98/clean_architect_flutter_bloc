import 'package:get_it/get_it.dart';

import '../../data/datasources/remote/data_source/auth_remote_data_source.dart';

class RemoteDataSourceDI {
  RemoteDataSourceDI._();

  static Future<void> init(GetIt injector) async {
    injector.registerFactory<AuthRemoteDataSource>(
        () => AuthRemoteDataSourceImpl(injector()));
  }
}
