import 'package:base_flutter_bloc/data/datasources/remote/auth_remote_data_source.dart';
import 'package:get_it/get_it.dart';

class RemoteDataSourceDI {
  RemoteDataSourceDI._();

  static Future<void> init(GetIt injector) async {
    injector.registerFactory(() => AuthRemoteDataSource(injector()));
  }
}
