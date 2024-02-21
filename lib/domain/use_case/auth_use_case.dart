import 'package:base_flutter_bloc/domain/entities/auth_entities.dart';
import 'package:base_flutter_bloc/domain/repository/auth_repository.dart';
import 'package:base_flutter_bloc/domain/use_case/use_case.dart';

import '../entities/data_state.dart';
import '../entities/user_info_entity.dart';

class AuthUseCase {
  AuthUseCase(this._authRepository);

  final AuthRepository _authRepository;

  Future<DataState<AuthEntity>> login(
      String phoneNumber, String countryCode) async {
    DataState<AuthEntity> entity =
        await _authRepository.login(phoneNumber, countryCode);
    return entity;
  }

  Future<UserInfoEntity> getUserInfo() async {
    UserInfoEntity entity = await _authRepository.getUserInfo();
    return entity;
  }
}

class LoginUseCase extends UseCase<LoginParams, DataState<AuthEntity>> {
  LoginUseCase(this._authRepository);

  final AuthRepository _authRepository;

  @override
  Future<DataState<AuthEntity>> call(LoginParams argument) {
    return _authRepository.login(argument.phoneNumber, argument.countryCode);
  }
}

class LoginParams {
  LoginParams({required this.phoneNumber, required this.countryCode});

  final String phoneNumber;
  final String countryCode;
}
