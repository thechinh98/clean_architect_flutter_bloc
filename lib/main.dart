import 'package:base_flutter_bloc/presentation/themes/app_theme_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:responsive_framework/responsive_framework.dart';

import 'common/configs/app_config.dart';
import 'common/configs/network_config.dart';
import 'common/di/app_injector.dart';
import 'generated/l10n.dart';
import 'presentation/app/app_bloc.dart';
import 'presentation/app_routes.dart';
import 'presentation/services/navigation_service.dart';

void main() async {
  await AppConfig().configApp(buildMode: BuildMode.dev);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider<AppBloc>(
      create: (_) => getIt<AppBloc>(),
      child: MaterialApp(
        title: 'Flutter Demo',
        localizationsDelegates: const <LocalizationsDelegate<dynamic>>[
          S.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        navigatorKey: getIt<NavigationService>().navigatorKey,
        supportedLocales: S.delegate.supportedLocales,
        theme: AppThemeData.lightTheme,
        onGenerateRoute: AppRoute.getRoute,
        initialRoute: RouteConst.homeRoute,
        builder: EasyLoading.init(
          builder: (_, Widget? child) {
            return ResponsiveWrapper.builder(
              BouncingScrollWrapper.builder(context, child!),
              breakpoints: <ResponsiveBreakpoint>[
                const ResponsiveBreakpoint.autoScale(
                  320,
                  name: 'IPHONE SE',
                  scaleFactor: 0.9,
                ),
                const ResponsiveBreakpoint.autoScale(
                  330,
                  name: 'Small Android Phone',
                  scaleFactor: 0.9,
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<int> listInt = <int>[];

  @override
  void initState() {
    super.initState();
    for (int i = 0; i < 100; i++) {
      listInt.add(i);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView.builder(
        shrinkWrap: true,
        itemBuilder: (BuildContext context, int index) {
          int item = listInt[index];
          return TempItem(index: item);
        },
        itemCount: listInt.length,
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class TempItem extends StatefulWidget {
  const TempItem({Key? key, required this.index}) : super(key: key);
  final int index;

  @override
  State<TempItem> createState() => _TempItemState();
}

class _TempItemState extends State<TempItem> {
  late int index;

  @override
  void initState() {
    super.initState();
    index = widget.index;
  }

  @override
  Widget build(BuildContext context) {
    return Text(index.toString());
  }

  @override
  void dispose() {
    super.dispose();
  }
}
