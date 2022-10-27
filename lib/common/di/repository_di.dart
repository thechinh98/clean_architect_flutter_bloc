import 'package:base_flutter_bloc/data/repositories/auth_repository_impl.dart';
import 'package:get_it/get_it.dart';

import '../../domain/repository/auth_repository.dart';

class RepositoryDI{
  RepositoryDI._();
  static Future<void> init(GetIt injector) async {
    injector.registerFactory<AuthRepository>(() => AuthRepositoryImpl(injector()));
  }
}