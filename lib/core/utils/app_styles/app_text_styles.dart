import 'package:doctor_app/constants.dart';
import 'package:flutter/material.dart';

abstract class AppTextStyles {
  static const TextStyle styleBold50 = TextStyle(
      fontSize: 50,
      fontFamily: kMainFontFamily,
      color: Colors.white,
      fontWeight: FontWeight.bold);

  static const TextStyle styleBold24 = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w700,
    fontFamily: kMainFontFamily,
  );
  static const TextStyle styleMedium18 = TextStyle(
      fontSize: 18, fontWeight: FontWeight.w500, fontFamily: kMainFontFamily);
}
