import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:shop/utils/themes.dart';
import 'package:sizer/sizer.dart';

Widget customSearch(){
  return TextFormField(
    controller: TextEditingController(),

    validator: (val) {
      return null;
    },

    decoration: InputDecoration(
      fillColor: HexColor("#F6F6F6"),
      prefixIcon: const Icon(Icons.search),

      hintText: "ابحث عن المنتجات",
      hintStyle: GoogleFonts.almarai(
          fontSize: 15.sp, fontWeight: FontWeight.w500, color: kBorderColor),
      filled: true,
      enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: kBorderColor),
          borderRadius: BorderRadius.circular(30)),
      focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: kActiveColor),
          borderRadius: BorderRadius.circular(30)),
    ),

  );
}
