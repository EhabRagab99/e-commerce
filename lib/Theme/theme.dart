import 'package:flutter/material.dart';

class ThemeClass {
  static Color primaryColor = const Color(0xffef5625);
  static Color accentColor = Colors.grey;
  static Color whiteColor = const Color(0xffFFFFFF);
  static Color blackColor = const Color(0xff292929);
  static Color greyColor = const Color(0xffA5A5A5);
  static Color blueColor = const Color(0xff22577A);
  static Color lightBlueColor = const Color(0xffDAEAF1);
  static Color yellowColor = const Color(0xffF0C929);
  static Color lightYellowColor = const Color(0xffF4E06D);
  static Color hintColor = const Color(0xffF4E06D);
  static Color textFieldBackgroundColor = const Color(0xFFEDF8EC);
  static Color containerBackground = const Color(0xFFDDE9DC);
  static Color containerWBackground = const Color(0xFFFAF7EF);
  static Color backgroundAppBar = Colors.transparent;

  static LinearGradient screenGradient = const LinearGradient(
    colors: [
      Color(0xffDaEcD8),
      Color(0xffFDF1E2),
      Color(0xffFFF0EF),
      Color(0xffFDF1E2),
      Color(0xffDaEcD8),
    ],
    stops: [
      0.0,
      0.4,
      0.55,
      0.7,
      0.9,
    ],
    begin: Alignment.topRight,
    end: Alignment.bottomLeft,
  );
}
