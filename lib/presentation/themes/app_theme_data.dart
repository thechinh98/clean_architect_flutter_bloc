import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/color_constant.dart';

class AppThemeData {
  static ThemeData get lightTheme {
    return ThemeData(
      primarySwatch: Colors.grey,
      scaffoldBackgroundColor: kDefaultBackgroundColor,
      // 0xFFF6F3F0
      appBarTheme: const AppBarTheme(
        backgroundColor: kDefaultAppBarBackgroundColor,
        foregroundColor: Colors.white,
      ),
      // 0xFFAA2B2F

      bottomAppBarTheme:
          const BottomAppBarTheme(color: kDefaultBottomAppBarColor),
      // 0xFFAA2B,

      inputDecorationTheme: InputDecorationTheme(
        fillColor: kDefaultInputColor,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0),
          borderSide: const BorderSide(color: Color(0xFFADABAB)),
        ),
      ),
      textTheme: GoogleFonts.publicSansTextTheme(),
      pageTransitionsTheme: const PageTransitionsTheme(
          builders: <TargetPlatform, PageTransitionsBuilder>{
            TargetPlatform.android: CupertinoPageTransitionsBuilder(),
            TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
          }),
    );
  }

  static ThemeData get darkTheme {
    return ThemeData(
      scaffoldBackgroundColor: kDarkModeBackgroundColor,
      // 0xFFF6F3F0
      appBarTheme: const AppBarTheme(
        backgroundColor: kDarkModeAppBarBackgroundColor,
        foregroundColor: Colors.white,
      ),
      // 0xFFAA2B2F

      bottomAppBarTheme:
          const BottomAppBarTheme(color: kDarkModeBottomAppBarColor),
      // 0xFFAA2B,

      inputDecorationTheme: InputDecorationTheme(
        fillColor: kDarkModeInputColor,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0),
          borderSide: const BorderSide(color: Color(0xFFADABAB)),
        ),
      ),
      primaryColor: Colors.black,
      brightness: Brightness.dark,
      // accentColor: Colors.white,
      // accentIconTheme: IconThemeData(color: Colors.black),
      dividerColor: Colors.black12,

      fontFamily: 'SF Pro Display',
      colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.grey)
          .copyWith(background: const Color(0xFF212121)),
      // pageTransitionsTheme: const PageTransitionsTheme(builders: {
      //   TargetPlatform.android: CupertinoPageTransitionsBuilder(),
      //   TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
      // }
      // ),
    );
  }
}
