import 'package:flutter/material.dart';

class Styles {

  static ThemeData themeData(bool isDarkTheme, BuildContext context) {
    return ThemeData(
     // primarySwatch: Colors.red,
     // primaryColor: isDarkTheme ? Colors.black : Colors.white,

      backgroundColor: isDarkTheme ? const Color(0xff2F2F2F) : const Color(0xffFCFCFC),
      brightness: isDarkTheme ? Brightness.dark : Brightness.light,
      fontFamily: "Poppins",


      appBarTheme: AppBarTheme(
        elevation: 0.0,
        backgroundColor: isDarkTheme ? const Color(0xff2F2F2F) : const Color(0xffFCFCFC),
        titleTextStyle: TextStyle(
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w600,
            fontSize: 24,
            color: isDarkTheme ? Colors.white :Colors.black ),
        iconTheme: IconThemeData(color: isDarkTheme ? Colors.white :Colors.black),
      ),
    );

  }
}