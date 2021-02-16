import 'package:flutter/material.dart';

const primaryColor = Colors.black;
const accentColor = Color(0xFFFFFFFF);

ThemeData customTheme() {
  return new ThemeData(
    textTheme: new TextTheme(
      bodyText2: new TextStyle(
        fontFamily: 'Poppins',
      ),
      bodyText1: TextStyle(
        fontFamily: "Poppins",
      ),
      button: TextStyle(
        fontFamily: "Poppins",
      ),
      caption: TextStyle(
        fontFamily: "Poppins",
      ),
      headline1: TextStyle(
        fontFamily: "Poppins",
      ),
      headline2: TextStyle(
        fontFamily: "Poppins",
      ),
      headline3: TextStyle(
        fontFamily: "Poppins",
      ),
      headline4: TextStyle(
        fontFamily: "Poppins",
      ),
      headline5: TextStyle(
        fontFamily: "Poppins",
      ),
      headline6: TextStyle(
        fontFamily: "Poppins",
      ),
      overline: TextStyle(
        fontFamily: "Poppins",
      ),
      subtitle1: TextStyle(
        fontFamily: "Poppins",
      ),
      subtitle2: TextStyle(
        fontFamily: "Poppins",
      ),
    ),
    buttonTheme: new ButtonThemeData(
      buttonColor: accentColor,
    ),
    primaryColor: primaryColor,
    accentColor: accentColor,
  );
}
