import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../helpers/custom_light_colors.dart';

ThemeData customlighttheme() {
  return ThemeData(
      useMaterial3: true,
      fontFamily: "Roboto",
      primaryColor: CustomLightColors.primaryColor,
      scaffoldBackgroundColor: Colors.white,
      buttonTheme: ButtonThemeData(buttonColor: CustomLightColors.primaryColor),
      backgroundColor: CustomLightColors.secondaryColor,
      iconTheme: IconThemeData(color: CustomLightColors.secondaryColor),
      cardTheme: CardTheme(color: CustomLightColors.primaryColorVariant),
      dividerTheme: DividerThemeData(
          color: CustomLightColors.secondaryColor, thickness: 1, space: 30),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              backgroundColor: CustomLightColors.primaryColor,
              foregroundColor: CustomLightColors.secondaryColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              textStyle: const TextStyle(
                  fontSize: 16, fontWeight: FontWeight.normal))),
      appBarTheme:
          AppBarTheme(backgroundColor: CustomLightColors.primaryColorVariant),
      textTheme: GoogleFonts.robotoTextTheme().copyWith(
          headline6: TextStyle(
            color: CustomLightColors.primaryColorVariant,
          ),
          headline5: TextStyle(
              color: CustomLightColors.secondaryColor,
              fontWeight: FontWeight.bold),
          headline4: TextStyle(
              color: CustomLightColors.secondaryColor,
              fontWeight: FontWeight.bold),
          headline3: TextStyle(
              color: CustomLightColors.secondaryColor,
              fontWeight: FontWeight.bold),
          subtitle1: TextStyle(
              color: CustomLightColors.secondaryColor,
              fontWeight: FontWeight.bold),
          subtitle2: TextStyle(color: CustomLightColors.secondaryColor),
          bodyText2: TextStyle(
              color: CustomLightColors.secondaryColor,
              fontWeight: FontWeight.bold),
          bodyText1: TextStyle(color: CustomLightColors.primaryColorVariant),
          caption: TextStyle(
              foreground: Paint()..color = CustomLightColors.secondaryColor),
          overline: TextStyle(
              foreground: Paint()..color = CustomLightColors.secondaryColor)),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
          elevation: 10,
          foregroundColor: Colors.white,
          backgroundColor: CustomLightColors.primaryColor),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          selectedItemColor: CustomLightColors.primaryColor,
          selectedIconTheme:
              IconThemeData(color: CustomLightColors.primaryColor, size: 30),
          unselectedIconTheme:
              IconThemeData(color: CustomLightColors.secondaryColor, size: 30)),
      colorScheme:
          ColorScheme.fromSwatch().copyWith(secondary: Colors.deepOrange));
}
