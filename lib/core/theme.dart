import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jogodomilhao/core/colors.dart';

ThemeData myLightTheme = ThemeData(
    primaryColor: MyColors.primary,
    unselectedWidgetColor: Colors.white,
    buttonTheme: const ButtonThemeData(
      textTheme: ButtonTextTheme.primary,
      colorScheme: ColorScheme.light(
        primary: Colors.blue,
        onPrimary: Colors.black,
      ),
    ),
    tabBarTheme: const TabBarTheme(
      indicatorColor: Colors.transparent,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        textStyle: MaterialStatePropertyAll(
          GoogleFonts.rubik(
            fontSize: 16,
            color: MyColors.onBackgroundLight,
          ),
        ),
        iconColor: const MaterialStatePropertyAll(
          Colors.black,
        ),
        elevation: const MaterialStatePropertyAll(
          0,
        ),
        backgroundColor: const MaterialStatePropertyAll(
          Colors.transparent,
        ),
      ),
    ),
    appBarTheme: AppBarTheme(
      titleTextStyle: GoogleFonts.rubik(
        fontSize: 20,
        color: Colors.black,
      ),
    ),
    colorScheme: const ColorScheme.light(
      primary: MyColors.primary,
    ),
    textTheme: TextTheme(
      bodyMedium: GoogleFonts.rubik(
        fontSize: 16,
      ),
      bodyLarge: GoogleFonts.rubik(
        fontSize: 26,
      ),
    ),
    expansionTileTheme: const ExpansionTileThemeData(
      iconColor: Colors.white,
    ));

ThemeData myDarkTheme = ThemeData(
  buttonTheme: const ButtonThemeData(
    textTheme: ButtonTextTheme.primary,
    colorScheme: ColorScheme.light(
      primary: Color(0xFF0489D6),
      onPrimary: Colors.white,
    ),
  ),
  appBarTheme: AppBarTheme(
    titleTextStyle: GoogleFonts.rubik(
      fontSize: 20,
      color: Colors.black,
    ),
    backgroundColor: Colors.black,
  ),
  textTheme: TextTheme(
    bodyMedium: GoogleFonts.rubik(
      fontSize: 16,
      color: Colors.white,
    ),
    bodyLarge: GoogleFonts.rubik(
      fontSize: 26,
      color: Colors.white,
    ),
  ),
  colorScheme: const ColorScheme.light(
    primary: Color(0xFF1A3E66),
    onPrimary: Colors.white,
    background: Colors.black,
  ),
);
