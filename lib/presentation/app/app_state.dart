enum AppStatus {
  initial,
  changingLanguage,
  changeLanguageSuccess,
  changeLanguageFail,
}

class AppState {
  const AppState({
    this.language = 'en',
    this.status = AppStatus.initial,
  });

  final String language;
  final AppStatus status;

  AppState copyWith({String? language, AppStatus? status}) {
    return AppState(
        language: language ?? this.language, status: status ?? this.status);
  }

  static const AppState initState = AppState();
}
