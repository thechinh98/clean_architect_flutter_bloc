import 'package:base_flutter_bloc/presentation/screens/login/bloc/login_bloc.dart';
import 'package:get_it/get_it.dart';

class BlocDI {
  BlocDI._();

  static Future<void> init(GetIt injector) async {
    injector.registerFactory<LoginBloc>(() => LoginBloc());
  }
}
