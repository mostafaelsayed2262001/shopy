import 'package:flutter/material.dart';

import 'package:shop/utils/textUtils.dart';
import 'package:shop/utils/themes.dart';
import 'package:sizer/sizer.dart';

Widget titleSignupWidget() {
  return Column(
    children: [
      SizedBox(
        height: 15.h,
      ),
      Center(
        child: TextUtils(
          text: "Create Account",
          fontSize: 20.sp,
          color: kActiveColor,
          fontWeight: FontWeight.bold,
        ),
      ),
      SizedBox(
        height: 10.h,
      ),
    ],
  );
}
