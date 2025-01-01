import 'package:flutter/material.dart';
import 'package:shop/utils/themes.dart';

import 'package:shop/view/layout/textformfield_widget.dart';
import 'package:sizer/sizer.dart';

Widget fieldsSignupWidget() {
  return Column(
    children: [
      TextFormFieldWidget(
          hintText: "Full Name",
          controller: TextEditingController(),
          secure: false,
          validator: () {},
          prefix: const Icon(Icons.person_outline_outlined),
          suffixIcon: const SizedBox()),
      SizedBox(
        height: 2.h,
      ),
      TextFormFieldWidget(
          hintText: "Email",
          controller: TextEditingController(),
          secure: false,
          validator: () {},
          prefix: Icon(
            Icons.alternate_email,
            color: kBorderColor,
          ),
          suffixIcon: const SizedBox()),
      SizedBox(
        height: 2.h,
      ),
      TextFormFieldWidget(
          hintText: "Password",
          controller: TextEditingController(),
          secure: false,
          validator: () {},
          prefix: Icon(
            Icons.lock_outline_rounded,
            color: kBorderColor,
          ),
          suffixIcon: IconButton(
            icon: const Icon(
              Icons.remove_red_eye_outlined,
              color: Colors.black,
            ),
            onPressed: () {},
          )),
      SizedBox(
        height: 2.h,
      ),

      TextFormFieldWidget(
          hintText: "Confirm Password",

          controller: TextEditingController(),
          secure: false,
          validator: () {},
          prefix: Icon(
            Icons.lock_outline_rounded,
            color: kBorderColor,
          ),
          suffixIcon: IconButton(
            icon: const Icon(
              Icons.remove_red_eye_outlined,
              color: Colors.black,
            ),
            onPressed: () {},
          )),
    ],
  );
}
