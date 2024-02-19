import 'package:base_flutter_bloc/domain/entities/auth_entities.dart';

class AuthModel extends AuthEntity {
  AuthModel({required String token}) : super(token: token);

  static AuthModel fromJson(Map<String, dynamic> json) {
    return AuthModel(token: json['token']);
  }

  Map<String, dynamic> toJson(){
    return {
      'token': token
    };
  }
  @override
  bool operator ==(Object other) {
    return other is AuthModel &&
        other.runtimeType == runtimeType &&
        token == other.token;
  }

  @override
  int get hashCode => token.hashCode;
}
