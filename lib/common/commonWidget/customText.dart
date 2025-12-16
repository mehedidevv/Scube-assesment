import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomText extends StatelessWidget {
  CustomText({
    super.key,
    this.maxLines,
    this.textAlign = TextAlign.center,
    this.left = 0,
    this.right = 0,
    this.top = 0,
    this.bottom = 0,
    this.fontSize = 14,
    this.fontWeight = FontWeight.w400,
    this.color = Colors.black,
    this.text = "",
    this.overflow = TextOverflow.fade,
    this.letterSpace,
    this.underline = false,
    this.fontFamily, // optional, for custom Google Font
  });

  final double left;
  final double right;
  final double top;
  final double bottom;
  final double fontSize;
  final FontWeight fontWeight;
  final Color color;
  final String text;
  final TextAlign textAlign;
  final int? maxLines;
  final TextOverflow overflow;
  final double? letterSpace;
  final bool underline;
  final String? fontFamily; // optional font

  @override
  Widget build(BuildContext context) {
    TextStyle textStyle;

    // Check if a custom font is provided
    if (fontFamily != null && fontFamily!.isNotEmpty) {
      textStyle = GoogleFonts.getFont(
        fontFamily!,
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color,
        letterSpacing: letterSpace,
        decoration: underline ? TextDecoration.underline : TextDecoration.none,
        decorationColor: Color(0XFFA11C11),
      );
    } else {
      textStyle = GoogleFonts.inter(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color,
        letterSpacing: letterSpace,
        decoration: underline ? TextDecoration.underline : TextDecoration.none,
        decorationColor: Color(0XFFA11C11),
      );
    }

    return Padding(
      padding: EdgeInsets.only(left: left, right: right, top: top, bottom: bottom),
      child: Text(
        text,
        textAlign: textAlign,
        maxLines: maxLines,
        overflow: overflow,
        style: textStyle,
      ),
    );
  }
}