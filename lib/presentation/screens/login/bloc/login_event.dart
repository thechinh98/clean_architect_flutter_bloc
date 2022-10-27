abstract class LoginEvent {}

class LoginRequested extends LoginEvent {
  final String? invitationCode;
  final String? phoneNumber;
  final String? password;

  LoginRequested({this.invitationCode, this.phoneNumber, this.password});
}


