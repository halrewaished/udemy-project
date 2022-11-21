import 'package:flutter/material.dart';


const Color mainColor = Color(0xff00BE84);
const Color darkGreyColor = Color(0xFF121212);
const Color pinkColor = Color(0xFFff4667);
const Color kColor1 = Color(0xff685959);
const Color kColor2 = Color(0xffADA79B);
const Color kColor3 = Color(0xffA5947F);
const Color kColor4 = Color(0xff738871);
const Color kColor5 = Color(0xff6D454D);
const Color kColor6 = Color(0xff654681);
const Color darkSettings = Color(0xff6132e4);
const Color accountSettings = Color(0xff73bc65);
const Color logOutSettings = Color(0xff5f95ef);
const Color notiSettings = Color(0xffdf5862);
const Color languageSettings = Color(0xffCB256C);





class ThemesApp {
  static final light = ThemeData(
    primaryColor: kColor6,
    backgroundColor: Colors.white,
    brightness: Brightness.light,
  );

  static final dark = ThemeData(
    primaryColor: darkGreyColor,
    backgroundColor: darkGreyColor,
    brightness: Brightness.dark,
  );
}