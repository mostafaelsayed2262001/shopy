import 'package:flutter/material.dart';
import 'package:shop/utils/textUtils.dart';
import 'package:sizer/sizer.dart';

Widget cardNotificationMethod() {
  return Container(
      padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 1.5.h),
      decoration: BoxDecoration(
          color: Colors.black12.withOpacity(.031), borderRadius: BorderRadius.circular(10)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextUtils(text: "لم يتم بيع المنتج ", color: Colors.black,),
          SizedBox(height: 10),
          TextUtils(
              text:
                  "منتج سويت شيرت المقاس الخاص  تم الشحن للعميل الحالى محمد على ",
              color: Colors.grey.shade600,maxLines: 2),
        ],
      ));
}
