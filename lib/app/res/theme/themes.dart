import 'package:bomb_time/app/res/colors/app_colors.dart';
import 'package:bomb_time/app/res/constants/radius.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Themes {
  final lightTheme = ThemeData.light().copyWith(
    primaryColor: Colors.red,
    cardColor: Colors.white,
    scaffoldBackgroundColor: Colors.grey[200],
    shadowColor: Colors.grey,
  );
  final darkTheme = ThemeData.dark().copyWith(
      primaryColor: AppColor.primaryButtonColor,
      cardColor: AppColor.cardColor,
      scaffoldBackgroundColor: AppColor.scaffoldColor,
      iconTheme: const IconThemeData(color: AppColor.whiteColor),
      textTheme: TextTheme(
        headlineLarge: GoogleFonts.pressStart2p(color: AppColor.whiteColor),
        labelMedium: GoogleFonts.pressStart2p(color: AppColor.whiteColor),
        titleSmall: GoogleFonts.pressStart2p(color: AppColor.whiteColor),
        labelSmall: GoogleFonts.pressStart2p(color: AppColor.subtitleNeonColor),
      ),
      chipTheme: ChipThemeData(
          pressElevation: 30,
          elevation: 40,
          shadowColor: AppColor.primaryErrorColor,
          backgroundColor: AppColor.primaryErrorColor,
          shape: RoundedRectangleBorder(
              side: const BorderSide(color: Colors.transparent),
              borderRadius: getBorderRadiusValue(CustomBorderRadius.medium))),
      inputDecorationTheme: InputDecorationTheme(
        fillColor: AppColor.inputFilledColor,
        filled: true,
        border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: getBorderRadiusValue(CustomBorderRadius.medium)),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              backgroundColor: AppColor.primaryButtonColor)));
}
