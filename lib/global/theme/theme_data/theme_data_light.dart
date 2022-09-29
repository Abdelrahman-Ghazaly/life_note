import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:life_note/global/theme/theme.dart';

ThemeData getLightThemeData() => ThemeData(
      appBarTheme: AppBarTheme(
        color: AppColorLight.appBarColor,
        elevation: 0,
        iconTheme: const IconThemeData(
          color: AppColorLight.appBarIconColor,
          size: 40,
        ),
        titleTextStyle: TextStyle(
          color: AppColorLight.bigTextColor,
          fontWeight: FontWeight.bold,
          fontSize: 28,
          fontFamily: GoogleFonts.montserratAlternates().fontFamily,
        ),
      ),
      scaffoldBackgroundColor: AppColorLight.backgroundColor,
      iconTheme: const IconThemeData(
        color: AppColorLight.iconColor,
        size: 40,
      ),
      textTheme: TextTheme(
        titleLarge: TextStyle(
          color: AppColorLight.bigTextColor,
          fontWeight: FontWeight.bold,
          fontSize: 45,
          fontFamily: GoogleFonts.montserratAlternates().fontFamily,
        ),
        titleMedium: TextStyle(
          color: AppColorLight.bigTextColor,
          fontWeight: FontWeight.bold,
          fontSize: 35,
          fontFamily: GoogleFonts.montserratAlternates().fontFamily,
        ),
        titleSmall: TextStyle(
          color: AppColorLight.bigTextColor,
          fontWeight: FontWeight.bold,
          fontSize: 28,
          fontFamily: GoogleFonts.montserratAlternates().fontFamily,
        ),
        displayLarge: TextStyle(
          color: AppColorLight.inactiveTextColor,
          fontSize: 25,
          fontFamily: GoogleFonts.montserratAlternates().fontFamily,
        ),
        displayMedium: TextStyle(
          color: AppColorLight.inactiveTextColor,
          fontSize: 20,
          fontFamily: GoogleFonts.montserratAlternates().fontFamily,
        ),
        displaySmall: TextStyle(
          color: AppColorLight.inactiveTextColor,
          fontSize: 15,
          fontFamily: GoogleFonts.montserratAlternates().fontFamily,
        ),
        bodyLarge: TextStyle(
          color: AppColorLight.activeTextColor,
          fontSize: 25,
          fontFamily: GoogleFonts.montserratAlternates().fontFamily,
        ),
        bodyMedium: TextStyle(
          color: AppColorLight.activeTextColor,
          fontSize: 20,
          fontFamily: GoogleFonts.montserratAlternates().fontFamily,
        ),
        bodySmall: TextStyle(
          color: AppColorLight.activeTextColor,
          fontSize: 15,
          fontFamily: GoogleFonts.montserratAlternates().fontFamily,
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: ButtonStyle(
          backgroundColor:
              const MaterialStatePropertyAll(AppColorLight.buttonColor),
          foregroundColor:
              const MaterialStatePropertyAll(AppColorLight.bigTextColor),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
              side: const BorderSide(color: AppColorLight.buttonColor),
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
        backgroundColor: AppColorLight.buttonColor,
        iconSize: 27,
        elevation: 0,
        enableFeedback: false,
      ),
    );
