import 'package:base_flutter_bloc/common/di/api_di.dart';
import 'package:base_flutter_bloc/common/di/bloc_di.dart';
import 'package:base_flutter_bloc/common/di/local_data_source_di.dart';
import 'package:base_flutter_bloc/common/di/logger_di.dart';
import 'package:base_flutter_bloc/common/di/model_di.dart';
import 'package:base_flutter_bloc/common/di/network_di.dart';
import 'package:base_flutter_bloc/common/di/remote_data_source_di.dart';
import 'package:base_flutter_bloc/common/di/screen_di.dart';
import 'package:base_flutter_bloc/common/di/share_pref_di.dart';
import 'package:base_flutter_bloc/common/di/size_di.dart';
import 'package:get_it/get_it.dart';

import '../configs/network_config.dart';
import 'database_di.dart';
import 'repository_di.dart';
import 'use_case_di.dart';

final GetIt getIt = GetIt.instance;

class AppInjector {
  AppInjector._();

  static final GetIt injector = GetIt.instance;

  static Future<void> initializeDependencies(BuildMode buildMode) async {
      await SizeDI.init(injector);
      await SharedPrefDI.init(injector);
      await NetworkDI.init(injector, buildMode: buildMode);
      await LoggerDI.init(injector, buildMode: buildMode);
      await DatabaseDI.init(injector);
      await ApiDI.init(injector);
      await ModelDI.init(injector);
      await LocalDataSourceDI.init(injector);
      await RemoteDataSourceDI.init(injector);
      await RepositoryDI.init(injector);
      await UseCaseDI.init(injector);
      await BlocDI.init(injector);
      await ScreenDI.init(injector);
  }
}
