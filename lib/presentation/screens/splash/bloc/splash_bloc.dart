import 'package:base_flutter_bloc/common/di/app_injector.dart';
import 'package:base_flutter_bloc/common/extensions/string_extension.dart';
import 'package:base_flutter_bloc/domain/use_case/auth_use_case.dart';
import 'package:base_flutter_bloc/presentation/screens/splash/bloc/splash_event.dart';
import 'package:base_flutter_bloc/presentation/screens/splash/bloc/splash_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashBloc extends Bloc<SplashEvent, SplashState> {
  SplashBloc() : super(SplashState.initState) {
    on<SplashInitialDependenciesEvent>(_onInitDependencies);
  }

  Future<void> _onInitDependencies(
    SplashInitialDependenciesEvent event,
    Emitter<SplashState> emit,
  ) async {
    emit(state.copyWith(status: SplashStatus.initializing));
    final userEntity = await getIt<AuthUseCase>().getUserInfo();
    final String? accessToken = userEntity.accessToken;
    if (!accessToken.isEmptyOrNull()) {
      emit(state.copyWith(status: SplashStatus.tokenValid));
      return;
    }
    emit(state.copyWith(status: SplashStatus.tokenInValid));
  }
}
