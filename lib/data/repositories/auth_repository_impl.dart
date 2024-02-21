import 'package:base_flutter_bloc/domain/entities/auth_entities.dart';
import 'package:base_flutter_bloc/domain/entities/data_state.dart';
import 'package:base_flutter_bloc/domain/entities/user_info_entity.dart';
import 'package:base_flutter_bloc/domain/repository/auth_repository.dart';
import 'package:dio/dio.dart';

import '../datasources/local/auth_local_datasource.dart';
import '../datasources/remote/data_source/auth_remote_data_source.dart';

class AuthRepositoryImpl extends AuthRepository {
  AuthRepositoryImpl(this._authRemoteDataSource, this._authLocalDataSource);

  final AuthRemoteDataSource _authRemoteDataSource;
  final AuthLocalDataSource _authLocalDataSource;

  @override
  Future<DataState<AuthEntity>> login(
      String phoneNumber, String countryCode) async {
    try {
      DataState<AuthEntity> response =
          await _authRemoteDataSource.login(phoneNumber, countryCode);
      return response;
    } on DioError catch (error) {
      return DataFailed<AuthEntity>(error);
    }
  }

  @override
  Future<UserInfoEntity> getUserInfo() async {
    UserInfoEntity entity = await _authLocalDataSource.getUserInfo();
    return entity;
  }
}
