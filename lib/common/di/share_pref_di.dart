import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefDI {
  SharedPrefDI._();

  static Future<void> init(GetIt injector) async {
    SharedPreferences sharedPref = await SharedPreferences.getInstance();
    injector.registerLazySingleton(() => sharedPref);
  }
}
