import 'package:base_flutter_bloc/common/extensions/string_extension.dart';
import 'package:base_flutter_bloc/data/datasources/remote/services/base_service.dart';
import 'package:base_flutter_bloc/domain/entities/auth_entities.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../../../domain/entities/data_state.dart';
import '../api/auth_api.dart';
import '../responses/base_response.dart';
import '../../../mapper/auth_response_mapper.dart';

class AuthService with ConvertAbleDataState {
  AuthService(this._api);

  final AuthApi _api;

  Future<DataState<AuthEntity>> login(
      String phoneNumber, String countryCode) async {
    try {
      final HttpResponse<AuthResponse> _response = await _api
          .login(<String, String>{
        'mobile': phoneNumber.normalizePhoneNumber(),
        'countryCode': countryCode
      });
      return convertToDataState<AuthEntity, AuthResponse>(
          _response, AuthResponseMapper());
    } on DioError catch (error) {
      return DataFailed<AuthEntity>(error);
    }
  }
}
