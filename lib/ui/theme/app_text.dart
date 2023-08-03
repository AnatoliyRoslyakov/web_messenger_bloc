import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyle {
  static TextStyle get _baseFonts => GoogleFonts.inder();

  static TextStyle get base => _baseFonts.copyWith();
}
