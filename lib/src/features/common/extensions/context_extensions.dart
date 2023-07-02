import 'package:flutter/material.dart';

extension BuildContextExtensions on BuildContext {
  ThemeData get theme => Theme.of(this);

  Size get screenSize => MediaQuery.sizeOf(this);

  EdgeInsets get screenPadding => MediaQuery.paddingOf(this);

  double get screenTextScaleFactor => MediaQuery.textScaleFactorOf(this);

  bool get isSmallScreen => screenSize.width < 800;

  bool get isMediumScreen =>
      screenSize.width >= 800 && screenSize.width <= 1200;

  bool get isLargeScreen => screenSize.width > 800;

  void showSnackBar(SnackBar snackBar) {
    ScaffoldMessenger.of(this).showSnackBar(snackBar);
  }
}
