abstract class LoginEvent {}

class LoginRequested extends LoginEvent {
  LoginRequested(
      {this.invitationCode,
      this.phoneNumber,
      this.countryCode,
      this.isLoading = false});

  final String? invitationCode;
  final String? phoneNumber;
  final String? countryCode;
  final bool isLoading;
}
