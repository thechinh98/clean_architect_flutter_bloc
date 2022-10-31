enum SplashStatus { init, initializing, tokenValid, tokenInValid, unknownError }

class SplashState {
  final SplashStatus status;
  final bool? hasProfile;
  final bool isEmailSent;
  final bool isSetupComplete;

  SplashState(
      {this.status = SplashStatus.init,
      this.hasProfile = false,
      this.isEmailSent = false,
      this.isSetupComplete = false});

  SplashState copyWith(
      {SplashStatus? status,
      bool? hasProfile,
      bool? isEmailSent,
      bool? isSetupComplete}) {
    return SplashState(
      status: status ?? this.status,
      hasProfile: hasProfile ?? this.hasProfile,
      isEmailSent: isEmailSent ?? this.isEmailSent,
      isSetupComplete: isSetupComplete ?? this.isSetupComplete,
    );
  }

  static SplashState initState = SplashState();
}
