import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../helpers/custom_light_colors.dart';

ThemeData customlighttheme() {
  return FlexThemeData.light(
    colors: const FlexSchemeColor(
      primary: Color(0xff1145a4),
      primaryContainer: Color(0xff9fb4da),
      secondary: Color(0xffb61d1d),
      secondaryContainer: Color(0xffe1a4a4),
      tertiary: Color(0xff376bca),
      tertiaryContainer: Color(0xffcfdbf2),
      appBarColor: Color(0xffcfdbf2),
      error: Color(0xffb00020),
    ),
    surfaceMode: FlexSurfaceMode.highSurfaceLowScaffold,
    blendLevel: 20,
    appBarOpacity: 0.95,
    subThemesData: const FlexSubThemesData(
      blendOnLevel: 20,
      blendOnColors: false,
      cardRadius: 19.0,
      elevatedButtonSchemeColor: SchemeColor.onPrimary,
      elevatedButtonSecondarySchemeColor: SchemeColor.primary,
    ),
    useMaterial3ErrorColors: true,
    visualDensity: FlexColorScheme.comfortablePlatformDensity,
    useMaterial3: true,
    fontFamily: GoogleFonts.notoSans().fontFamily,
    textTheme: GoogleFonts.notoSansTextTheme().copyWith(
        headline6: TextStyle(
          color: CustomLightColors.primaryColor,
        ),
        headline5: TextStyle(
            color: CustomLightColors.primaryColor, fontWeight: FontWeight.bold),
        headline4: TextStyle(
            color: CustomLightColors.primaryColor, fontWeight: FontWeight.bold),
        headline3: TextStyle(
            color: CustomLightColors.primaryColor, fontWeight: FontWeight.bold),
        subtitle1: TextStyle(
            color: CustomLightColors.primaryColor, fontWeight: FontWeight.bold),
        subtitle2: TextStyle(color: CustomLightColors.primaryColor),
        bodyText2: TextStyle(
            color: CustomLightColors.primaryColor, fontWeight: FontWeight.bold),
        bodyText1: TextStyle(color: CustomLightColors.primaryColor),
        caption: TextStyle(
            foreground: Paint()..color = CustomLightColors.primaryColor),
        overline: TextStyle(
            foreground: Paint()..color = CustomLightColors.primaryColor)),
  );
}
