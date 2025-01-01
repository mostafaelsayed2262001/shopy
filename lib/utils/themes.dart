import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

// const Color mainColor = Colors.green;
const Color darkGreyClr = Color(0xFF121212);
const Color pinkClr = Color(0xFFff4667);
const Color kCOlor = Colors.grey;
final kPrimaryColor = HexColor("#0D5C89");
final kActiveColor = HexColor("#1882BD");
final kBackGroundColor = HexColor("#F6F6F6");
final kBorderColor = HexColor("#190101");

class ThemesApp {
  static final light = ThemeData(
    primaryColor: kPrimaryColor,
    appBarTheme: AppBarTheme(color: kPrimaryColor),

    brightness: Brightness.light,
  );

  static final dark = ThemeData(
    primaryColor: darkGreyClr,

    brightness: Brightness.dark,
  );
}