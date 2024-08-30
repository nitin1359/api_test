import 'package:flutter/material.dart';

Widget customText({
  required String text,
  fontColor = const Color(0xff261C12),
  double? size = 16,
  FontWeight? weight = FontWeight.w400,
  TextAlign? align = TextAlign.center,
}) {
  return Text(
    text,
    textAlign: align,
    style: TextStyle(
      
      color: fontColor,
      fontSize: size,
      fontWeight: FontWeight.bold,
    ),
  );
}
