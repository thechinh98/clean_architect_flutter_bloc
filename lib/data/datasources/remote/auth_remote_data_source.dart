import 'package:base_flutter_bloc/data/datasources/remote/services/auth_service.dart';
import 'package:base_flutter_bloc/domain/entities/auth_entities.dart';

import '../../../domain/entities/data_state.dart';

abstract class AuthRemoteDataSource {
  Future<DataState<AuthEntity>> login(String phoneNumber, String countryCode);
}

class AuthRemoteDataSourceImpl extends AuthRemoteDataSource {
  AuthRemoteDataSourceImpl({required AuthService authService})
      : _authService = authService;

  final AuthService _authService;

  @override
  Future<DataState<AuthEntity>> login(String phoneNumber,
      String countryCode) async {
    final DataState<AuthEntity> loginResponse =
    await _authService.login(phoneNumber, countryCode);
    return loginResponse;
  }
}
