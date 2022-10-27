import 'package:base_flutter_bloc/domain/use_case/auth_use_case.dart';
import 'package:get_it/get_it.dart';

class UseCaseDI {
  UseCaseDI._();

  static Future<void> init(GetIt injector) async {
    injector.registerFactory<AuthUseCase>(() => AuthUseCase(injector()));
  }

}
