import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppFonts {
  static TextStyle lato({
     Color? color,
     double? fontSize,
    FontWeight fontWeight = FontWeight.normal,
  }) {
    return GoogleFonts.lato(
      textStyle: TextStyle(
        color: color,
        fontSize: fontSize,
        fontWeight: fontWeight,
      ),
    );
  }
}
