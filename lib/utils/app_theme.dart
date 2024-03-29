import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  static const Color COLOR_PRIMARY = Color(0xff387AF6);
  static const Color COLOR_CONFLOWER_BLUE = Color(0xff548CF6);
  static const Color COLOR_ROYAL_BLUE = Color(0xff5554DA);
  static const Color COLOR_SIMPLE_BLUE = Color(0xffA6C3FB);
  static const Color COLOR_BLACK = Color(0xff000000);
  static const Color COLOR_WHITE = Color(0xffFFFFFF);
  static const Color COLOR_RED = Color(0xffED1C24);
  static const Color COLOR_GREY = Color(0xff707070);
  static const Color COLOR_GREY2 = Color(0xff727272);
  static const Color COLOR_GREY3 = Color(0xffACACAC);
  static const Color COLOR_ALTO = Color(0xffC9C0C0);
  static const Color COLOR_SILVER = Color(0xffB8B8B8);
  static const Color COLOR_YELLOW_SEA = Color(0xffF5963E);
  static const Color COLOR_MOUNTAIN_MEADOW = Color(0xff129A7F);
  static const Color COLOR_DEEP_SEA = Color(0xff109178);
  static const Color COLOR_MEDIUM_SLATE_BLUE = Color(0xffA079EC);
  static const Color COLOR_SPECIALIST_CARD_PRICE = Color(0xffFDBD83);
  static const Color COLOR_HOME_BACKGROUND = Color(0xffF6F6F6);
  static const Color COLOR_GAINSBORO = Color(0xffDBDBDB);
  static const Color COLOR_MAYA_BLUE = Color(0xff3ECDFF);
  static const Color COLOR_COLUMBIA_BLUE = Color(0xffB1D8FA);
  static const Color COLOR_SKY_MAYA_BLUE = Color(0xffD6ECFF);
  // MY COLORS
  static const Color COLOR_YELLOW = Color(0xfffdb400);
  static const Color COLOR_SEA_GREEN = Color(0xff01a8b1);
  static const Color COLOR_DARK_ORANGE = Color(0xfffc5c38);
  static const Color COLOR_TEXT_FIELD = Color(0xfff8f8f8);
  static const Color COLOR_TEXT_ICON = Color(0xff051644);

  static const String fontName = 'Poppins';

  static const TextTheme textTheme = TextTheme(
    headline1: poppinsSemiBold,
    headline2: title,
  );

  static const TextStyle title = TextStyle(
    fontFamily: fontName,
    fontWeight: FontWeight.w600,
    fontSize: 18.0,
    color: Colors.black87,
  );

  static const poppinsRegular = TextStyle(
    color: COLOR_BLACK,
    fontFamily: 'Poppins',
    fontSize: 16,
  );
  static const poppinsBold = TextStyle(
    color: COLOR_BLACK,
    fontFamily: 'Poppins',
    fontWeight: FontWeight.bold,
    fontSize: 16,
  );
  static const poppinsSemiBold = TextStyle(
    color: COLOR_BLACK,
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w600,
    fontSize: 16,
  );
}
