import 'package:base_flutter_bloc/data/datasources/remote/auth_remote_data_source.dart';
import 'package:base_flutter_bloc/domain/entities/auth_entities.dart';
import 'package:base_flutter_bloc/domain/entities/data_state.dart';
import 'package:base_flutter_bloc/domain/entities/user_info_entity.dart';
import 'package:base_flutter_bloc/domain/repository/auth_repository.dart';

import '../datasources/local/auth_local_datasource.dart';

class AuthRepositoryImpl extends AuthRepository{
  final AuthRemoteDataSource _authRemoteDataSource;
  final AuthLocalDataSource _authLocalDataSource;

  AuthRepositoryImpl(this._authRemoteDataSource, this._authLocalDataSource);
  @override
  Future<DataState<AuthEntity>> login() async {
    final response = await _authRemoteDataSource.login("", "");
    return response;
  }

  @override
  Future<UserInfoEntity> getUserInfo() async {
    final entity = await _authLocalDataSource.getUserInfo();
    return entity;
  }

}