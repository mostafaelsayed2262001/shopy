import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop/utils/themes.dart';
import 'package:shop/view/layout/textformfield_widget.dart';
import 'package:shop/view_model/cubit/auth_cubit/auth_cubit.dart';
import 'package:sizer/sizer.dart';

Widget fieldsLoginAuth(context) {


  return Form(
    key: BlocProvider.of<AuthCubit>(context).logInformKey,
    child: Column(
      children: [
        TextFormFieldWidget(
            hintText: "Email",
            controller: TextEditingController(),
            secure: false,
            validator: (String? value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your email';
              }

              // Regular expression to validate email
              final RegExp emailRegex = RegExp(
                r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$',
              );

              if (!emailRegex.hasMatch(value)) {
                return 'Please enter a valid email address';
              }

              return null; // Email is valid
            },
            prefix: Icon(
              Icons.alternate_email,
              color: kPrimaryColor,
            ),
            suffixIcon: const SizedBox()),
        SizedBox(
          height: 2.h,
        ),
        TextFormFieldWidget(
            hintText: "Password",
            controller: TextEditingController(),
            secure: false,
            validator: (String? value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your password';
              }

              // شرط الطول
              if (value.length < 8) {
                return 'Password must be at least 8 characters long';
              }

              // التأكد من وجود حرف كبير
              if (!value.contains(RegExp(r'[A-Z]'))) {
                return 'Password must contain at least one uppercase letter';
              }

              // التأكد من وجود حرف صغير
              if (!value.contains(RegExp(r'[a-z]'))) {
                return 'Password must contain at least one lowercase letter';
              }

              // التأكد من وجود رقم
              if (!value.contains(RegExp(r'\d'))) {
                return 'Password must contain at least one number';
              }

              // التأكد من وجود حرف خاص
              if (!value.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'))) {
                return 'Password must contain at least one special character';
              }

              return null; // Password is valid
            },
            prefix: Icon(
              Icons.lock_outline_rounded,
              color: kPrimaryColor,
            ),
            suffixIcon: IconButton(
              icon: const Icon(
                Icons.remove_red_eye_outlined,
                color: Colors.black,
              ),
              onPressed: () {},
            )),
      ],
    ),
  );
}
