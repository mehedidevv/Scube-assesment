// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:flutter/cupertino.dart';

class AppColors {
  static Color mainColor = Color(0xFF1A1A1A);
  static Color btnColor = Color(0xFF0096FC);
  static Color orangeColor = Color(0xFFFF9A00);
  static Color bgColor = Color(0xFFe6f0ff);
  static Color textColor = Color(0XFFC44545);

  // ✅ New: Linear Gradient (Main → Orange)
  static LinearGradient buttonGradient = LinearGradient(
    colors: [
      Color(0xFF3C353B),
      Color(0xFF785E57),
    ],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );


}