import 'package:base_flutter_bloc/common/configs/network_config.dart';
import 'package:base_flutter_bloc/common/di/app_injector.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:lottie/lottie.dart';

import '../../presentation/utils/assets.dart';
import '../../presentation/utils/color_constant.dart';

class AppConfig {
  AppConfig._();

  factory AppConfig() {
    return _appConfig;
  }

  static final AppConfig _appConfig = AppConfig._();

  Future<void> configApp({required BuildMode buildMode}) async {
    WidgetsFlutterBinding.ensureInitialized();
    await AppInjector.initializeDependencies(buildMode);
    configLoading();
    handleErrors();
  }

  void handleErrors() {
    FlutterError.onError = (FlutterErrorDetails details) {
      FlutterError.presentError(details);
      if (kReleaseMode) {
        //   FirebaseCrashlytics.instance.recordError(
        //     details,
        //     details.stack,
        //     printDetails: true,
        //     reason: details.library,
        //     fatal: true,
        //   );
        // }
      }
      ;

      ErrorWidget.builder = (FlutterErrorDetails details) {
        if (kReleaseMode) {
          return Container();
        }
        return Container(
          color: kDeathColor,
          child: Center(
            child: Text(
              'Error: \n${details.exception.toString()} \n ${details.library}',
              textAlign: TextAlign.center,
            ),
          ),
        );
      };
    };
  }

  void configLoading() {
    EasyLoading.instance
      // ..indicatorType = EasyLoadingIndicatorType.circle
      ..maskType = EasyLoadingMaskType.custom
      ..loadingStyle = EasyLoadingStyle.custom
      ..textColor = kDefaultBackgroundColor
      ..indicatorSize = 40.0
      ..radius = 12.0
      ..backgroundColor = kDefaultBackgroundColor
      ..indicatorColor = kFirstPrimaryColor
      ..maskColor = kLoadingMaskColor.withOpacity(0.5)
      ..userInteractions = true
      ..indicatorWidget = Lottie.asset(AnimationPaths.loadingDotsAnimation)
      ..dismissOnTap = true
      ..displayDuration = const Duration(seconds: 10);
  }
  //
  // void doSomeStuff() {
  //   getIt<CustomInterceptors>()
  //       .onResponseStream
  //       .listen((Response<dynamic> event) async {
  //     if (getIt<Dev>().isDeveloper) {
  //       final String title =
  //       //ignore: lines_longer_than_80_chars
  //           '${event.requestOptions.baseUrl}${event.requestOptions.path}\ncode: ${event.statusCode}';
  //
  //       await getIt<NavigationService>()
  //           .openDialog(title: title, content: event.toString());
  //     }
  //   });
  //   getIt<CustomInterceptors>().onErrorStream.listen((DioError event) async {
  //     if (getIt<Dev>().isDeveloper) {
  //       await getIt<NavigationService>().openDialog(
  //           title:
  //           //ignore: lines_longer_than_80_chars
  //           '${event.requestOptions.baseUrl}${event.requestOptions.path}\ncode: ${event.response?.statusCode}',
  //           content: event.error);
  //     }
  //   });
  // }
}
