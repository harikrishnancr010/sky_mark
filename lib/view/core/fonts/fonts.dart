import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:skymark/view/core/colors/colors.dart';

class GoogleFont {
  //Golos Text
  static TextStyle homeHeadTextStyle = GoogleFonts.workSans(
      fontSize: 18, fontWeight: FontWeight.w700, color: Skymark.blackColor);

  static TextStyle homeAppBarTextStyle = GoogleFonts.workSans(
      fontSize: 22, fontWeight: FontWeight.w700, color: Skymark.whiteColor);

  static TextStyle loginScreenHeadTextStyle = GoogleFonts.workSans(
      fontSize: 28, fontWeight: FontWeight.w700, color: Skymark.blackColor);

  static TextStyle loginScreenSubTextStyle = GoogleFonts.poppins(
      fontSize: 14, fontWeight: FontWeight.w400, color: Skymark.greyColor);

  static TextStyle homeTileHeadTextStyle = GoogleFonts.poppins(
      fontSize: 14, fontWeight: FontWeight.w600, color: Skymark.blackColor);

  static TextStyle phonenUmberTextStyle = GoogleFonts.poppins(
      fontSize: 16, fontWeight: FontWeight.w400, color: Skymark.blackColor);

  static TextStyle buttonTextStyleLogin = GoogleFonts.poppins(
      fontSize: 16, fontWeight: FontWeight.w500, color: Skymark.whiteColor);

  static TextStyle phonenUmberTextStyleInactive = GoogleFonts.poppins(
      fontSize: 16, fontWeight: FontWeight.w400, color: Skymark.lightGrey);

  static TextStyle serarchLabelStyle = GoogleFonts.poppins(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      color: const Color.fromARGB(78, 255, 255, 255));

  static TextStyle homeTileSubTextStyle = GoogleFonts.poppins(
      fontSize: 12, fontWeight: FontWeight.w400, color: Skymark.greyColor);

  static TextStyle otpTimerColor = GoogleFonts.poppins(
      fontSize: 14,
      fontWeight: FontWeight.w700,
      color: Skymark.primaryColorBlue2E);

  static TextStyle resentOtpTextClor = GoogleFonts.poppins(
      fontSize: 14, fontWeight: FontWeight.w500, color: Skymark.greyColor);

  // static TextStyle homeTileHeadTextStyle = GoogleFonts.Golos Text(
  //     fontSize: 10, fontWeight: FontWeight.w400, color: Skymark.blackColor);
}
