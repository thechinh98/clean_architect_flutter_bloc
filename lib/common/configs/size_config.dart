import 'package:flutter/material.dart';

class SizeConfig {
  Size? _mediaQueryData;

  Size get mediaQuerySize => _mediaQueryData!;


  void setMq(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context).size;
  }
}