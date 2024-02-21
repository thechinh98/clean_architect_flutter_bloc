import 'package:base_flutter_bloc/domain/entities/auth_entities.dart';
import 'package:base_flutter_bloc/presentation/screens/login/bloc/login_event.dart';
import 'package:base_flutter_bloc/presentation/screens/login/bloc/login_state.dart';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../domain/entities/data_state.dart';
import '../../../../domain/use_case/auth_use_case.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc(this.loginUseCase) : super(LoginState.initState) {
    on<LoginRequested>(_verifyRequested);
  }

  final LoginUseCase loginUseCase;

  void _verifyRequested(LoginRequested event, Emitter<LoginState> emit) async {
    String phoneNumber = event.phoneNumber ?? '1234567';
    String countryCode = event.countryCode ?? '84';

    try {
      emit(state.copyWith(status: LoginStatus.loginInProgress));
      DataState<AuthEntity> authEntity = await loginUseCase.call(
          LoginParams(phoneNumber: phoneNumber, countryCode: countryCode));
      authEntity.foldSuccessAndFailure(
        onSuccess: (data) {
          emit(state.copyWith(status: LoginStatus.loginSuccess));
        },
        onFailure: (error) {
          emit(state.copyWith(
              status: LoginStatus.loginFailure, message: error?.message));
        },
      );
    } on DioError catch (error) {
      emit(state.copyWith(
          status: LoginStatus.loginFailure, message: error.message));
      rethrow;
    }
  }
}
