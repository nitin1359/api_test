import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget customText({
  required String text,
  fontColor = const Color(0xff261C12),
  double? fontSize = 16,
  FontWeight? fontWeight = FontWeight.w400,
  TextAlign? textAlign = TextAlign.center,
}) {
  return Text(
    text,
    textAlign: textAlign,
    style: GoogleFonts.beVietnamPro(
      color: fontColor,
      fontSize: fontSize,
      fontWeight: fontWeight,
    ),
  );
}
