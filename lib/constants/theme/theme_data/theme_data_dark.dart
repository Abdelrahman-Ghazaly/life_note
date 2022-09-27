import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:life_note/constants/theme/theme.dart';

ThemeData getDarkThemeData() => ThemeData(
      appBarTheme: AppBarTheme(
        color: AppColorDark.appBarColor,
        elevation: 0,
        iconTheme: const IconThemeData(
          color: AppColorDark.appBarIconColor,
          size: 40,
        ),
        titleTextStyle: TextStyle(
          color: AppColorDark.bigTextColor,
          fontWeight: FontWeight.bold,
          fontSize: 28,
          fontFamily: GoogleFonts.montserratAlternates().fontFamily,
        ),
      ),
      scaffoldBackgroundColor: AppColorDark.backgroundColor,
      iconTheme: const IconThemeData(
        color: AppColorDark.iconColor,
        size: 40,
      ),
      textTheme: TextTheme(
        titleLarge: TextStyle(
          color: AppColorDark.bigTextColor,
          fontWeight: FontWeight.bold,
          fontSize: 45,
          fontFamily: GoogleFonts.montserratAlternates().fontFamily,
        ),
        titleMedium: TextStyle(
          color: AppColorDark.bigTextColor,
          fontWeight: FontWeight.bold,
          fontSize: 35,
          fontFamily: GoogleFonts.montserratAlternates().fontFamily,
        ),
        titleSmall: TextStyle(
          color: AppColorDark.bigTextColor,
          fontWeight: FontWeight.bold,
          fontSize: 28,
          fontFamily: GoogleFonts.montserratAlternates().fontFamily,
        ),
        displayLarge: TextStyle(
          color: AppColorDark.inactiveTextColor,
          fontSize: 25,
          fontFamily: GoogleFonts.montserratAlternates().fontFamily,
        ),
        displayMedium: TextStyle(
          color: AppColorDark.inactiveTextColor,
          fontSize: 20,
          fontFamily: GoogleFonts.montserratAlternates().fontFamily,
        ),
        displaySmall: TextStyle(
          color: AppColorDark.inactiveTextColor,
          fontSize: 15,
          fontFamily: GoogleFonts.montserratAlternates().fontFamily,
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: ButtonStyle(
          backgroundColor:
              const MaterialStatePropertyAll(AppColorDark.buttonColor),
          foregroundColor:
              const MaterialStatePropertyAll(AppColorDark.bigTextColor),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
              side: const BorderSide(color: AppColorDark.buttonColor),
            ),
          ),
          padding: const MaterialStatePropertyAll(
            EdgeInsets.symmetric(
              horizontal: 40,
              vertical: 20,
            ),
          ),
          enableFeedback: false,
          textStyle: MaterialStatePropertyAll(
            TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              fontFamily: GoogleFonts.montserratAlternates().fontFamily,
            ),
          ),
        ),
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: AppColorDark.buttonColor,
        iconSize: 27,
        elevation: 0,
        enableFeedback: false,
      ),
    );
