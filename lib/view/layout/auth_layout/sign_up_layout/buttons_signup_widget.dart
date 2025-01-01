import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:shop/view/layout/text_utils.dart';
import 'package:shop/view/screens/auth_screens/log_in_screen.dart';
import 'package:shop/utils/themes.dart';
import 'package:sizer/sizer.dart';

Widget buttonSignupAuth(BuildContext context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      SizedBox(
        height: 3.h,
      ),
      ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: kPrimaryColor,
          fixedSize: Size(double.maxFinite, 6.h),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        child: const TextUtils(
          text: "Create Account",
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
      SizedBox(
        height: 2.h,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextUtils(text: "Have Acount?", color: Colors.black, fontSize: 15.sp),
          InkWell(
            child: TextUtils(text: "LogIn", fontSize: 15.sp),
            onTap: () {
              Navigator.push(
                context,
                CupertinoPageRoute(
                  builder: (context) => const LogInScreen(),
                ),
              );
            },
          ),
        ],
      )
    ],
  );
}
