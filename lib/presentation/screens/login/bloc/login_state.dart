import 'package:flutter/material.dart';

enum LoginStatus {
  initState,
  loginInProgress,
  loginFailure,
  loginSuccess,
  unknownError,
}

@immutable
class LoginState {
  const LoginState({this.status = LoginStatus.initState, this.message});

  final LoginStatus status;
  final String? message;

  LoginState copyWith({LoginStatus? status, String? message}) {
    return LoginState(
        status: status ?? this.status,
        message: message ?? this.message,
    );
  }

  static LoginState initState = const LoginState();
}
