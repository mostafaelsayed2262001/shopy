import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

Widget loadingWidget(){
  return Center(
      widthFactor: 15.w,
      heightFactor: 10.h,
      child: CircularProgressIndicator());
}