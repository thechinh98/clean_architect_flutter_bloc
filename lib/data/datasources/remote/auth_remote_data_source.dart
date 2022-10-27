import 'package:base_flutter_bloc/data/datasources/remote/services/auth_service.dart';
import 'package:base_flutter_bloc/domain/entities/auth_entities.dart';

import '../../../domain/entities/data_state.dart';

class AuthRemoteDataSource {
  AuthRemoteDataSource(this._authService);

  final AuthService _authService;

  Future<DataState<AuthEntity>> login(
      String phoneNumber, String countryCode) async {
    final DataState<AuthEntity> loginResponse =
        await _authService.login(phoneNumber, countryCode);
    return loginResponse;
  }
}
