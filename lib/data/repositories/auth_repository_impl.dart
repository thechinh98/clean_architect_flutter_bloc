import 'package:base_flutter_bloc/data/datasources/remote/auth_remote_data_source.dart';
import 'package:base_flutter_bloc/domain/entities/auth_entities.dart';
import 'package:base_flutter_bloc/domain/entities/data_state.dart';
import 'package:base_flutter_bloc/domain/repository/auth_repository.dart';

class AuthRepositoryImpl extends AuthRepository{
  final AuthRemoteDataSource _authRemoteDataSource;

  AuthRepositoryImpl(this._authRemoteDataSource);
  @override
  Future<DataState<AuthEntity>> login() async {
    final response = await _authRemoteDataSource.login("", "");
    return response;
  }

}