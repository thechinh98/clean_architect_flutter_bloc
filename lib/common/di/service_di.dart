import 'package:base_flutter_bloc/data/datasources/remote/services/auth_service.dart';
import 'package:base_flutter_bloc/presentation/services/navigation_service.dart';
import 'package:get_it/get_it.dart';

class ServiceDI {
  ServiceDI._();

  static Future<void> init(GetIt injector) async {
    injector
        .registerLazySingleton<NavigationService>(() => NavigationService());
    injector.registerFactory<AuthService>(() => AuthService(injector()));
  }
}
