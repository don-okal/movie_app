import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie/core/utils/app_colors.dart';
import 'package:movie/core/utils/size_utils.dart';

class AppTextStyle {
  static final TextStyle white14600 = TextStyle(
    fontFamily: GoogleFonts.roboto().fontFamily ?? 'DefaultFontFamily',
    fontSize: getFontSize(14),
    fontWeight: FontWeight.w600,
    color: AppColors.white,
  );
  static final TextStyle white10500 = TextStyle(
    fontFamily: GoogleFonts.roboto().fontFamily ?? 'DefaultFontFamily',
    fontSize: getFontSize(10),
    fontWeight: FontWeight.w500,
    color: AppColors.white,
  );
  static final TextStyle white15700 = TextStyle(
    fontFamily: GoogleFonts.roboto().fontFamily ?? 'DefaultFontFamily',
    fontSize: getFontSize(15),
    fontWeight: FontWeight.w700,
    color: AppColors.white,
  );

  static final TextStyle grey10800 = TextStyle(
    fontFamily: GoogleFonts.roboto().fontFamily ?? 'DefaultFontFamily',
    fontSize: getFontSize(10),
    fontWeight: FontWeight.w800,
    color: AppColors.textGrey,
  );
  static final TextStyle grey8500 = TextStyle(
    fontFamily: GoogleFonts.roboto().fontFamily ?? 'DefaultFontFamily',
    fontSize: getFontSize(8),
    fontWeight: FontWeight.w500,
    color: AppColors.textGrey,
  );
}
