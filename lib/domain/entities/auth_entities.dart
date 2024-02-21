import 'package:equatable/equatable.dart';

class AuthEntity extends Equatable {
  const AuthEntity({required this.token});

  final String token;

  @override
  List<Object?> get props => [token];
}
