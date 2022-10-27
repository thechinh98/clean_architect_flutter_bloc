import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../../common/configs/logger_config.dart';
import 'app_event.dart';
import 'app_state.dart';

class AppBloc extends Bloc<AppEvent, AppState> {
  AppBloc() : super(AppState.initState) {
    logi(message: 'AppInitial');
    on<OnSessionExpiredEvent>(_onSessionExpired);
    on<OnChangeLanguageEvent>(_onLanguageChange);
  }

  FutureOr<void> _onSessionExpired(
      OnSessionExpiredEvent event, Emitter<AppState> emit) {
    logi(message: 'Token has Expired');
  }

  FutureOr<void> _onLanguageChange(
      OnChangeLanguageEvent event, Emitter<AppState> emit) async {
    final String language = state.language == event.language ? 'en' : 'vi';

    emit(state.copyWith(
        language: language, status: AppStatus.changeLanguageSuccess));
  }
}