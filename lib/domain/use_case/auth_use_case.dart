import 'package:base_flutter_bloc/domain/entities/auth_entities.dart';
import 'package:base_flutter_bloc/domain/repository/auth_repository.dart';

import '../entities/data_state.dart';

class AuthUseCase {
  AuthUseCase(this._authRepository);

  final AuthRepository _authRepository;

  Future<DataState<AuthEntity>> login() async {
    final entity = await _authRepository.login();
    return entity;
  }
}