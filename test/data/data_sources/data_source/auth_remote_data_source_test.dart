import 'dart:convert';

import 'package:base_flutter_bloc/common/constant/network_constant.dart';
import 'package:base_flutter_bloc/data/datasources/remote/data_source/auth_remote_data_source.dart';
import 'package:base_flutter_bloc/data/datasources/remote/responses/base_response.dart';
import 'package:base_flutter_bloc/domain/entities/auth_entities.dart';
import 'package:base_flutter_bloc/domain/entities/data_state.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:retrofit/dio.dart';

import '../../../helper/json_reader.dart';
import '../../../helper/test_helper.mocks.dart';

void main() {
  late MockAuthApi testAuthApi;
  late AuthRemoteDataSourceImpl testAuthService;

  setUp(() {
    testAuthApi = MockAuthApi();
    testAuthService = AuthRemoteDataSourceImpl(testAuthApi);
  });

  Map<String, String> testLoginBody = {
    'mobile': 'username',
    'countryCode': 'password'
  };

  group('Test auth service return the right result from the auth api', () {
    test(
        'should return data success when the auth api return a success response',
        () async {
      when(testAuthApi.login(testLoginBody)).thenAnswer(
        (_) async => HttpResponse<AuthResponse>(
          AuthResponse.fromJson(json
              .decode(readJson('helper/dummy_data/dummy_auth_response.json'))),
          Response<AuthResponse>(
            statusCode: 200,
            requestOptions:
                RequestOptions(path: '$devBaseUrl$authPath$loginEndPoint'),
          ),
        ),
      );
      DataState<AuthEntity> result = await testAuthService.login(
          testLoginBody['mobile'] ?? '', testLoginBody['countryCode'] ?? '');

      expect(result, isA<DataSuccess<AuthEntity>>());
    });

    test(
        'should return data failure when the auth api return a failure response',
        () async {
      when(testAuthApi.login(testLoginBody)).thenAnswer(
        (_) async => HttpResponse<AuthResponse>(
          AuthResponse.fromJson(
            json.decode(
              readJson('helper/dummy_data/dummy_auth_response.json'),
            ),
          ),
          Response<AuthResponse>(
            statusCode: 404,
            requestOptions:
                RequestOptions(path: '$devBaseUrl$authPath$loginEndPoint'),
          ),
        ),
      );
      DataState<AuthEntity> result = await testAuthService.login(
          testLoginBody['mobile'] ?? '', testLoginBody['countryCode'] ?? '');

      expect(result, isA<DataFailed<AuthEntity>>());
    });
  });
}
