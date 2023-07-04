import 'package:flutter/material.dart';

class MyColors {
  static const Color primary = Color(0xFF003088);
  static const Color primarySemiDark = Color(0xFF37697E);
  static const Color primaryDark = Color(0xFF05445E);

  // static const Color accent = Color(0xFF0C4D5A);
  static const MaterialColor accent = MaterialColor(
    0xFF0C4D5A,
    <int, Color>{
      50: Color(0xFFD4F1F4), //accentLight//
      100: Color(0xFF75E6DA), //accentDark//
      200: Color(0xFF7FBFBF),
      300: Color(0xFF6FAFAF),
      400: Color(0xFF5F9F9E),
      500: Color(0xFF4F8F8D),
      600: Color(0xFF3F7F7C),
      700: Color(0xFF2F6E6B),
      800: Color(0xFF1D5D5A),
      900: Color(0xFF0C4D5A),
    },
  );

  static const Color grey_3 = Color(0xFFf7f7f7);
  static const Color grey_5 = Color(0xFFf2f2f2);
  static const Color grey_10 = Color(0xFFe0e0e0);
  static const Color grey_20 = Color(0xFFdfdfdf);
  static const Color grey_30 = Color(0xFFAEB8BC);
  static const Color grey_40 = Color(0xFF979797);
  static const Color grey_50 = Color(0xFF838383);
  static const Color grey_60 = Color(0xFF707070);
  static const Color grey_65 = Color(0xFF585F66);
  static const Color grey_70 = Color(0xEF424242);
  static const Color grey_80 = Color(0xFF393939);
  static const Color grey_90 = Color(0xFF263238);
  static const Color grey_95 = Color(0xFF1a1a1a);
  static const Color grey_100_ = Color(0xFF0d0d0d);

  static const Color red = Color(0xFFEB4D4B);
  static const Color unreadMessageRed = Color(0xFFF05053);

  static const Color textColor = Color(0xff303030);
}
