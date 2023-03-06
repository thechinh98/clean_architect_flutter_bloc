import 'package:base_flutter_bloc/data/datasources/remote/responses/base_response.dart';
import 'package:base_flutter_bloc/domain/entities/auth_entities.dart';
import 'package:base_flutter_bloc/domain/entities/base_entity_model.dart';

import 'base_mapper.dart';

extension AuthResponseMapperX on AuthResponse {
  BaseEntityModel mapToEntity() {
    return AuthEntity(token: accessToken ?? '');
  }
}

class AuthResponseMapper extends BaseMapper<AuthEntity, AuthResponse> {
  @override
  AuthEntity call(AuthResponse? response) {
    return AuthEntity(token: response?.accessToken ?? '');
  }
}