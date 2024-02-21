import 'package:base_flutter_bloc/common/extensions/string_extension.dart';
import 'package:base_flutter_bloc/domain/entities/auth_entities.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../../../domain/entities/data_state.dart';
import '../api/auth_api.dart';
import '../responses/base_response.dart';
import '../../../mapper/auth_response_mapper.dart';
import 'convertable_data_state_mixin.dart';

abstract class AuthRemoteDataSource {
  Future<DataState<AuthEntity>> login(String phoneNumber, String countryCode);
}

class AuthRemoteDataSourceImpl extends AuthRemoteDataSource
    with ConvertAbleDataState {
  AuthRemoteDataSourceImpl(this._api);

  final AuthApi _api;

  @override
  Future<DataState<AuthEntity>> login(
      String phoneNumber, String countryCode) async {
    try {
      final HttpResponse<AuthResponse> response = await _api
          .login(<String, String>{
        'mobile': phoneNumber.normalizePhoneNumber(),
        'countryCode': countryCode
      });
      return convertToDataState<AuthEntity, AuthResponse>(
          response, AuthResponseMapper());
    } on DioError catch (error) {
      return DataFailed<AuthEntity>(error);
    }
  }
}
