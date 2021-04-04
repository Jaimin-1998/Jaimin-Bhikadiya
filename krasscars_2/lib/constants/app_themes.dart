import 'package:flutter/material.dart';

class AppThemes {
  AppThemes._();
  static const Color primaryColor = Color(0xffF0EB16);

  static const Color greenColor = Color(0xff119A48);
  static const Color clrFontBlue = Color(0xff152843);
  static const Color clrgrayButtonBackground = Color(0xffF5F7F9);
  static const Color clrgrayButtonText = Color(0xff707070);

  static const Color clrWhite = Color(0xFFFFFFFF);
  static const Color clrPrimary = Color(0xFFF0EB16);
  static const Color clrLightBlack= Color(0xFF152843);
  static const Color clrHint= Color(0xFFF5F7F9);



  static const Color clrBlack = Colors.black;
  static const Color clrGray = Colors.grey;
  static const Color clrEdittextCommonBG = Colors.white;
  static const Color clrLightGreen = Colors.lightGreen;
  static const Color clrInValidate = Colors.white;
  static const Color clrTransparent = Colors.transparent;



  static ThemeData lightFontTheme = ThemeData(
    fontFamily: "Poppins-Regular",
    textTheme: TextTheme(
      headline1: TextStyle(color: Colors.red),
    ),
  );
}
