import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import 'package:shop/utils/textUtils.dart';
import 'package:shop/utils/themes.dart';
import 'package:shop/view/screens/auth_screens/sign_up_screen.dart';
import 'package:shop/view/screens/bottom_nav_bar_screens/main_screen.dart';
import 'package:shop/view_model/cubit/auth_cubit/auth_cubit.dart';
import 'package:shop/view_model/cubit/main_cubit/main_cubit.dart';
import 'package:sizer/sizer.dart';

Widget buttonsLoginAuth(BuildContext context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      TextButton(
          onPressed: () {},
          child: TextUtils(
            text: "Forget Password?",
            fontSize: 13.sp,
          )),
      SizedBox(
        height: 3.h,
      ),
      ElevatedButton(
        onPressed: () {
          try {
            if (BlocProvider.of<AuthCubit>(context)
                .logInformKey
                .currentState!
                .validate()) {
            MainCubit.get(context).getAllPruducts();
            MainCubit.get(context).getAllCategories();

            context.go("/homescreen");}
            else {
              print("vall");
            }
          } catch (e) {
            print(e);
          }
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: kPrimaryColor,
          fixedSize: Size(double.maxFinite, 6.h),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        child: const TextUtils(
          text: "Log In",
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
          TextUtils(
              text: "Dont Have Account?", color: Colors.black, fontSize: 15.sp),
          InkWell(
            child: TextUtils(text: "Create Account", fontSize: 15.sp),
            onTap: () {
              Navigator.push(
                context,
                CupertinoPageRoute(
                  builder: (context) => const SignUpScreen(),
                ),
              );
            },
          ),
        ],
      )
    ],
  );
}
