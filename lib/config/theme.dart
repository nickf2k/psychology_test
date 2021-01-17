import 'package:flutter/material.dart';

ThemeData themeConfig() {
  return ThemeData(
      primarySwatch: Colors.cyan,
      fontFamily: 'SegoeUI',
      textTheme: TextTheme(
        body1: TextStyle(
          fontWeight: FontWeight.w600,
        ),
      ));
}
