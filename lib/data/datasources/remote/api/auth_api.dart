import 'package:base_flutter_bloc/common/constant/network_constant.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../responses/base_response.dart';

part 'auth_api.g.dart';

@RestApi()
abstract class AuthApi {
  factory AuthApi(Dio dio) = _AuthApi;

  @POST('$authPath$loginEndPoint')
  Future<HttpResponse<AuthResponse>> login(
    @Body() Map<String, String> body,
  );
}
