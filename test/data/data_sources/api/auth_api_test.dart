import 'dart:convert';

import 'package:base_flutter_bloc/common/constant/network_constant.dart';
import 'package:base_flutter_bloc/data/datasources/remote/api/auth_api.dart';
import 'package:base_flutter_bloc/data/datasources/remote/responses/base_response.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:retrofit/dio.dart';

import '../../../helper/json_reader.dart';
import '../remote/auth_remote_data_source_test.dart';

class DioAdapterMock extends Mock implements HttpClientAdapter {}

class MockAuthApi extends Mock implements AuthApi {}

void main() {
  late Dio testDio;
  late DioAdapterMock dioAdapterMock;
  late MockAuthApi testAuthApi;

  setUp(() {
    dioAdapterMock = DioAdapterMock();
    testDio = Dio();
    testDio.httpClientAdapter = dioAdapterMock;
    testAuthApi = MockAuthApi();
  });
  Map<String, String> testLoginBody = {
    'username': 'username',
    'password': 'password'
  };
  group('Auth API testing', () {
    test('should return auth model when the response code is 200', () async {
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

      final result = await testAuthApi.login(testLoginBody);
      expect(result, isA<HttpResponse<AuthResponse>>);
    });
  });
}
