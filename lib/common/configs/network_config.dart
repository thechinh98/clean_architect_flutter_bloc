import 'package:shared_preferences/shared_preferences.dart';

import '../../data/datasources/local/auth_local_datasource.dart';
import '../../presentation/model/app_user.dart';
import '../constant/network_constant.dart';
import '../di/app_injector.dart';
import '../extensions/string_extension.dart';

enum BuildMode { dev, staging, prod }

abstract class NetWorkMode {
  NetWorkMode.internal(
      {required this.baseUrl,
      required this.localDBName,
      required this.connectTimeout,
      required this.receiveTimeout});

  factory NetWorkMode({required BuildMode mode}) {
    switch (mode) {
      case BuildMode.prod:
        return ProductionMode();
      case BuildMode.staging:
        return StagingMode();
      case BuildMode.dev:
        return DevelopmentMode();
    }
  }

  final String baseUrl;
  String localDBName;
  int connectTimeout;
  int receiveTimeout;

  Map<String, String> get headers {
    final String? accessToken = getIt<AppUser>().accessToken.isEmpty
        ? getIt<SharedPreferences>().getString(prefUserTokenKey)
        : getIt<AppUser>().accessToken;
    final Map<String, String> headers = <String, String>{
      'accept': '*/*',
      'Content-Type': 'application/json',
      'signature': signature,
      if (!accessToken.isEmptyOrNull()) 'Authorization': 'Bearer $accessToken'
    };
    return headers;
  }
}

class ProductionMode extends NetWorkMode {
  ProductionMode(
      {String localDBName = 'local.db',
        String baseUrl = prodBaseUrl,
        int connectTimeout = kConnectionTimeOutInMilliSecond,
        int receiveTimeout = kReceivingTimeOutInMilliSecond})
      : super.internal(
      baseUrl: baseUrl,
      localDBName: localDBName,
      connectTimeout: connectTimeout,
      receiveTimeout: receiveTimeout);
}

class StagingMode extends NetWorkMode {
  StagingMode(
      {String localDBName = 'local.db',
        String baseUrl = stagingBaseUrl,
        int connectTimeout = kConnectionTimeOutInMilliSecond,
        int receiveTimeout = kReceivingTimeOutInMilliSecond})
      : super.internal(
      baseUrl: baseUrl,
      localDBName: localDBName,
      connectTimeout: connectTimeout,
      receiveTimeout: receiveTimeout);
}

class DevelopmentMode extends NetWorkMode {
  DevelopmentMode(
      {String localDBName = 'local.db',
        String baseUrl = devBaseUrl,
        int connectTimeout = kConnectionTimeOutInMilliSecond,
        int receiveTimeout = kReceivingTimeOutInMilliSecond})
      : super.internal(
      baseUrl: baseUrl,
      localDBName: localDBName,
      connectTimeout: connectTimeout,
      receiveTimeout: receiveTimeout);
}
