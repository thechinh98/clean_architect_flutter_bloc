import 'package:json_annotation/json_annotation.dart';

part 'base_response.g.dart';

@JsonSerializable()
class AuthResponse {
  factory AuthResponse.fromJson(Map<String, dynamic> json) =>
      _$BaseResponseFromJson(json);

  AuthResponse({this.errorCode, this.errorMessage, this.accessToken});

  final String? errorCode;
  final String? errorMessage;
  final String? accessToken;

  Map<String, dynamic> toJson() => _$BaseResponseToJson(this);
}