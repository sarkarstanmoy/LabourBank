import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../helpers/custom_dark_colors.dart';

ThemeData customdarktheme() {
  return ThemeData.dark().copyWith(
      hintColor: const Color.fromARGB(100, 224, 224, 224),
      useMaterial3: true,
      iconTheme: IconThemeData(color: CustomDarkColors.secondaryColor),
      cardTheme: CardTheme(color: CustomDarkColors.secondaryColor),
      primaryColor: CustomDarkColors.primaryColor,
      backgroundColor: const Color.fromARGB(100, 224, 224, 224),
      dividerTheme: DividerThemeData(
          color: CustomDarkColors.secondaryColor, thickness: 1, space: 30),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              primary: CustomDarkColors.primaryColor,
              onPrimary: CustomDarkColors.secondaryColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              textStyle:
                  const TextStyle(fontSize: 18, fontWeight: FontWeight.bold))),
      // appBarTheme: AppBarTheme(backgroundColor: CustomDarkColors.primaryColor),
      textTheme: GoogleFonts.robotoTextTheme().copyWith(
        headline4: TextStyle(color: CustomDarkColors.secondaryColor),
        headline5: TextStyle(color: CustomDarkColors.primaryColor),
        headline6: const TextStyle(fontWeight: FontWeight.bold),
        subtitle1: TextStyle(
            color: CustomDarkColors.primaryColor, fontWeight: FontWeight.bold),
        subtitle2: TextStyle(color: CustomDarkColors.secondaryColor),
        bodyText2: TextStyle(color: CustomDarkColors.textColor2),
        bodyText1: TextStyle(color: CustomDarkColors.textColor1),
        caption: TextStyle(
            foreground: Paint()..color = CustomDarkColors.secondaryColor),
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
          elevation: 1,
          foregroundColor: CustomDarkColors.secondaryColor,
          backgroundColor: CustomDarkColors.primaryColor),
      colorScheme:
          ColorScheme.fromSwatch().copyWith(secondary: Colors.deepOrange));
}
