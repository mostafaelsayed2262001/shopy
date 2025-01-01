import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:shop/utils/themes.dart';

class TextFormFieldWidget extends StatelessWidget {
  final TextEditingController controller;
  final bool secure;
  final Function validator;
  final Widget prefix;
  final Widget suffixIcon;
  final String? hintText;
  final bool isNumber;

  const TextFormFieldWidget({
    required this.controller,
    required this.secure,
    Key? key,
    required this.validator,
    required this.prefix,
    required this.suffixIcon,
    this.hintText,
    this.isNumber = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: secure,
      cursorColor: Colors.black,
      keyboardType: isNumber == true ? TextInputType.phone : TextInputType.text,
      validator: (value) => validator(value),
      decoration: InputDecoration(
        fillColor: HexColor("#F6F6F6"),
        prefixIcon: prefix,
        suffixIcon: suffixIcon,
        hintText: hintText,
        hintStyle: GoogleFonts.almarai(
            fontSize: 16, fontWeight: FontWeight.w500, color: kBorderColor),
        filled: true,
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: kBorderColor),
            borderRadius: BorderRadius.circular(10)),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: kActiveColor),
            borderRadius: BorderRadius.circular(10)),
      ),
    );
  }
}
