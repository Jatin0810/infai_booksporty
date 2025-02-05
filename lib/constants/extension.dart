import 'package:flutter/material.dart';

extension MediaQueryExtensions on BuildContext {
  bool get isWebSiteScreen => MediaQuery.of(this).size.width > 450 ? true : false ;
  double get screenHeight => MediaQuery.of(this).size.height;
}