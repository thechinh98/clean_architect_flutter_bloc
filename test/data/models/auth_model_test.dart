import 'dart:convert';
import 'dart:math';

import 'package:base_flutter_bloc/data/models/auth_model.dart';
import 'package:base_flutter_bloc/domain/entities/auth_entities.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../helper/json_reader.dart';

void main() {
  AuthModel testAuthModel = AuthModel(token: 'test');

  test('should be a subclass of weather entity', () async {
    expect(testAuthModel, isA<AuthEntity>());
  });

  test('should return a valid model from json', () async {
    final Map<String, dynamic> jsonMap =
        json.decode(readJson('helper/dummy_data/dummy_auth_response.json'));

    AuthModel result = AuthModel.fromJson(jsonMap);

    expect(result, equals(testAuthModel));
  });

  test('should return a proper data', () async {
    Map<String, dynamic> expectedJsonResult = {'token': 'test'};
    Map<String, dynamic> result = testAuthModel.toJson();
    expect(result, equals(expectedJsonResult));
  });
}
