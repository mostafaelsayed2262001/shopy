import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shop/utils/themes.dart';


class TextUtils extends StatelessWidget {
  final String text;
  final FontWeight? fontWeight;
  final double? fontSize;
  final Color? color;

  final TextOverflow? overFlow;
  final int? maxLines;


  const TextUtils(
      {required this.text,
      this.fontWeight,
      this.fontSize,
      this.color,
      this.overFlow,
      this.maxLines,
      Key? key})
      : super(key: key);

  @override

  Widget build(BuildContext context) {

    return Text(
      text,
      maxLines: maxLines,
      overflow: TextOverflow.ellipsis,

      style:  GoogleFonts.almarai(

              fontSize: fontSize ?? MediaQuery.of(context).size.aspectRatio * 35,
              fontWeight: fontWeight ?? FontWeight.normal,
              color: color ?? kPrimaryColor,

              )



    );
  }
}
