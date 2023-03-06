abstract class LoginEvent {}

class LoginRequested extends LoginEvent {
  LoginRequested({this.invitationCode, this.phoneNumber, this.password});

  final String? invitationCode;
  final String? phoneNumber;
  final String? password;
}


