// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AuthResponse _$BaseResponseFromJson(Map<String, dynamic> json) => AuthResponse(
      errorCode: json['errorCode'] as String?,
      errorMessage: json['errorMessage'] as String?,
      accessToken: json['accessToken'] as String?,
    );

Map<String, dynamic> _$BaseResponseToJson(AuthResponse instance) =>
    <String, dynamic>{
      'errorCode': instance.errorCode,
      'errorMessage': instance.errorMessage,
      'accessToken': instance.accessToken,
    };
