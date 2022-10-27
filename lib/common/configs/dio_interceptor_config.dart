import 'dart:async';
import 'dart:developer';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';

import '../../presentation/services/navigation_service.dart';
import '../di/app_injector.dart';
import 'logger_config.dart';

class CustomInterceptors extends Interceptor {
  // Stream to send data outside
  final StreamController<RequestOptions> _requestStream =
  StreamController<RequestOptions>.broadcast();

  Stream<RequestOptions> get onRequestStream => _requestStream.stream;

  final StreamController<Response<dynamic>> _responseStream =
  StreamController<Response<dynamic>>.broadcast();

  Stream<Response<dynamic>> get onResponseStream => _responseStream.stream;

  final StreamController<DioError> _errorStream =
  StreamController<DioError>.broadcast();

  Stream<DioError> get onErrorStream => _errorStream.stream;

  @override
  Future<void> onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    logi(
      message: '=>>${options.path}\n->Headers: ${options.headers}'
          '\n->Body: ${inspect(options.data)}',
    );
    // String curl = 'curl --location --request';
    // curl += ' ${options.method} ';
    // curl += '\'${options.uri.toString()}\'';
    // curl += ' \\';
    // curl += '--header \'Content-Type: application/json\' \\';
    // curl += '--data-raw \'';
    // curl += json.encode(options.data.toString());
    // curl += '\'';
    // logi(message: 'Request=>>>: $curl');
    try {
      if (await Connectivity().checkConnectivity() == ConnectivityResult.none) {
        getIt<NavigationService>().showNoInternetDialog();
      }
    } catch (_) {
      loge(message: "CAN'T CHECK CONNECTIVITY");
    }
    _requestStream.add(options);
    return super.onRequest(options, handler);
  }

  @override
  void onResponse(
      Response<dynamic> response, ResponseInterceptorHandler handler) {
    final String msg = 'RESPONSE[${response.statusCode}] => PATH:'
        ' ${response.realUri.path}\n=>> Data: ${response.data}';

    logi(message: msg);
    _responseStream.add(response);
    return super.onResponse(response, handler);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    final String msg = 'ERROR[${err.response?.statusCode}] '
        '=> PATH: ${err.response?.realUri.path}\n=>> ${err.response?.data}';
    loge(message: msg);
    _errorStream.add(err);
    return super.onError(err, handler);
  }
}
