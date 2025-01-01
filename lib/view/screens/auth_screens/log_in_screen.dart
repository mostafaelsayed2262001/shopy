import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop/data/repository/all_products_repository.dart';
import 'package:shop/data/services/network/dio/dio_helper.dart';
import 'package:shop/view/layout/auth_layout/log_in_widget/buttons_login_widget.dart';
import 'package:shop/view/layout/auth_layout/log_in_widget/field_login_wodget.dart';
import 'package:shop/view/layout/auth_layout/log_in_widget/title_login_widget.dart';
import 'package:shop/view_model/cubit/auth_cubit/auth_cubit.dart';
import 'package:shop/view_model/cubit/main_cubit/main_cubit.dart';
import 'package:sizer/sizer.dart';

class LogInScreen extends StatelessWidget {
  const LogInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthCubit(),
      child: Scaffold(
        body: Container(
            padding: EdgeInsets.symmetric(horizontal: 5.w),
            height: double.infinity,
            width: double.infinity,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  titleLoginWidget(),
                  fieldsLoginAuth(context),
                  buttonsLoginAuth(context)
                ],
              ),
            )),
      ),
    );
  }
}
