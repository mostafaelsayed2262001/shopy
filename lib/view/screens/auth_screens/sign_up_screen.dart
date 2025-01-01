import 'package:flutter/material.dart';
import 'package:shop/view/layout/auth_layout/sign_up_layout/buttons_signup_widget.dart';

import 'package:shop/view/layout/auth_layout/sign_up_layout/fields_signup_widget.dart';
import 'package:shop/view/layout/auth_layout/sign_up_layout/title_signup_widget.dart';
import 'package:sizer/sizer.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          padding: EdgeInsets.symmetric(horizontal: 5.w),
          height: double.infinity,
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                titleSignupWidget(),
                fieldsSignupWidget(),
                buttonSignupAuth(context),
              ],
            ),
          )),
    );
  }
}
