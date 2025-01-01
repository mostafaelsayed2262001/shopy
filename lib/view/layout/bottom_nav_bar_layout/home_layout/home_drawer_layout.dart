import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:shop/utils/textUtils.dart';
import 'package:shop/view/screens/auth_screens/log_in_screen.dart';
import 'package:shop/view_model/cubit/main_cubit/main_cubit.dart';
class drawerHomeWidget extends StatelessWidget {
  const drawerHomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Drawer(child: ListView(
    // Important: Remove any padding from the ListView.
    padding: EdgeInsets.zero,
    children: [
       const DrawerHeader(
        decoration: BoxDecoration(
          color: Colors.black12,
        ),
        child: TextUtils(text: 'اللوجو'),
      ),
      ListTile(
        title:  TextUtils(text:'الرئيسية',),
        onTap: () {
          // Update the state of the app.
          // ...
        },
      ),
      ListTile(
        title:  TextUtils(text:'سياسة الخصوصية',color: Colors.black,),
        onTap: () {
          // Update the state of the app.
          // ...
        },
      ),
      ListTile(
        title:  TextUtils(text:'عن فريق العمل',color: Colors.black,),
        onTap: () {
          // Update the state of the app.
          // ...
        },
      ),ListTile(
        title:  TextUtils(text:'شروط الاستخدام',color: Colors.black,),
        onTap: () {
          // Update the state of the app.
          // ...
        },
      ),
      ListTile(
        title:  TextUtils(text:'تسجيل الخروج ',color: Colors.black,),
        onTap: () {
          context.go("logInScreen");

        //   Navigator.of(context)
        //       .push(MaterialPageRoute(builder: (context) =>  LogInScreen()));

        },
      ),

    ],
  ),);
}}