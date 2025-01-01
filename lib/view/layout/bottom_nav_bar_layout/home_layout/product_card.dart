import 'package:flutter/material.dart';
import 'package:shop/data/models/all_product_model.dart';
import 'package:shop/utils/textUtils.dart';
import 'package:shop/utils/themes.dart';
import 'package:shop/view_model/cubit/main_cubit/main_cubit.dart';
import 'package:sizer/sizer.dart';

Widget productCard(int index, context) {
  List<Product> products = MainCubit.get(context).products;
  return GestureDetector(
    onTap: () {
      debugPrint("${MainCubit.get(context).products.length}");
    },
    child: Container(
      padding: EdgeInsets.all(1.h),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 18.h,
            width: 40.w,
            child: Image.network(MainCubit.get(context).products[index].image),
          ),
          SizedBox(height: 1.h,),
          TextUtils(
              text: MainCubit.get(context).products[index].title,
              fontWeight: FontWeight.bold,
              fontSize: 15.sp),
          const Spacer(),
          Row(
            children: [
              TextUtils(
                text: "${products[index].price.toString()}\$",
                color: kActiveColor,
                fontWeight: FontWeight.w800,
                maxLines: 2,
              ),
              Spacer(),
              TextUtils(
                text: "${products[index].rating.rate} ☆",
                color: kActiveColor,
                fontWeight: FontWeight.w800,
                maxLines: 2,
              ),
            ],
          ),
        ],
      ),
    ),
  );
}
