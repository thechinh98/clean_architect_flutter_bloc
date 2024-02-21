import 'package:base_flutter_bloc/data/datasources/local/auth_local_datasource.dart';
import 'package:base_flutter_bloc/data/datasources/remote/data_source/auth_remote_data_source.dart';
import 'package:base_flutter_bloc/data/repositories/auth_repository_impl.dart';
import 'package:base_flutter_bloc/domain/entities/auth_entities.dart';
import 'package:base_flutter_bloc/domain/entities/data_state.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'auth_repository_impl_test.mocks.dart';

@GenerateMocks([AuthRemoteDataSource, AuthLocalDataSource])
void main() {
  late MockAuthRemoteDataSource mockAuthRemoteDataSource;
  late MockAuthLocalDataSource mockAuthLocalDataSource;
  late AuthRepositoryImpl authRepositoryImpl;

  setUp(() {
    mockAuthRemoteDataSource = MockAuthRemoteDataSource();
    mockAuthLocalDataSource = MockAuthLocalDataSource();
    authRepositoryImpl =
        AuthRepositoryImpl(mockAuthRemoteDataSource, mockAuthLocalDataSource);
  });
  String testPhoneNumber = '123456';
  String testCountryCode = '000000';
  group('test data source', () {
    test('repo should return auth entity when remote data source run success',
        () async {
      when(mockAuthRemoteDataSource.login(testPhoneNumber, testCountryCode))
          .thenAnswer((_) async => const DataSuccess(AuthEntity(token: '')));
      DataState<AuthEntity> result =
          await authRepositoryImpl.login(testPhoneNumber, testCountryCode);

      expect(result, isA<DataSuccess<AuthEntity>>());
    });
    test('repo should return failure when remote data source return failure',
        () async {
      when(mockAuthRemoteDataSource.login(testPhoneNumber, testCountryCode))
          .thenThrow(DioError(
              requestOptions: RequestOptions(path: ''),
              type: DioErrorType.connectTimeout));
      DataState<AuthEntity> result =
          await authRepositoryImpl.login(testPhoneNumber, testCountryCode);

      expect(result, isA<DataFailed<AuthEntity>>());
    });
  });
}
