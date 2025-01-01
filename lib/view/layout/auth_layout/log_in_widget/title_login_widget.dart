import 'package:flutter/material.dart';
import 'package:shop/utils/textUtils.dart';
import 'package:shop/utils/themes.dart';
import 'package:sizer/sizer.dart';

Widget titleLoginWidget() {
  return Column(
    children: [
      SizedBox(
        height: 15.h,
      ),
      Center(
        child: TextUtils(
          text: "Log In",
          fontSize: 20.sp,
          color: kPrimaryColor,
          fontWeight: FontWeight.bold,
        ),
      ),
      SizedBox(
        height: 10.h,
      ),
    ],
  );
}
