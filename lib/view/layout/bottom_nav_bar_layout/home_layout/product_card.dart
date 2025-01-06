import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:shop/data/models/all_product_model.dart';
import 'package:shop/utils/textUtils.dart';
import 'package:shop/utils/themes.dart';
import 'package:shop/view_model/cubit/main_cubit/main_cubit.dart';
import 'package:sizer/sizer.dart';

Widget productCard(int index, BuildContext context, {bool isLoading = false}) {
  List<Product> products = MainCubit.get(context).products;

  if (isLoading) {
    // Shimmer effect when loading
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade300,
      highlightColor: Colors.grey.shade100,
      child: Container(
        padding: EdgeInsets.all(1.h),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Image placeholder
            Container(
              height: 18.h,
              width: 40.w,
              color: Colors.grey.shade300,
            ),
            SizedBox(height: 1.h),
            // Title placeholder
            Container(
              height: 2.h,
              width: 30.w,
              color: Colors.grey.shade300,
            ),
            Spacer(),
            Row(
              children: [
                // Price placeholder
                Container(
                  height: 1.5.h,
                  width: 10.w,
                  color: Colors.grey.shade300,
                ),
                Spacer(),
                // Rating placeholder
                Container(
                  height: 1.5.h,
                  width: 8.w,
                  color: Colors.grey.shade300,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  // Actual product card after loading
  return GestureDetector(
    onTap: () {
      debugPrint("${products.length}");
    },
    child: Container(
      padding: EdgeInsets.all(1.h),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200,
            blurRadius: 4,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Product Image
          SizedBox(
            height: 18.h,
            width: 40.w,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.network(
                products[index].image,
                fit: BoxFit.contain,
              ),
            ),
          ),
          SizedBox(height: 1.h),
          // Product Title
          TextUtils(
            text: products[index].title,
            fontWeight: FontWeight.bold,
            fontSize: 15.sp,
          ),
          Spacer(),
          // Price and Rating
          Row(
            children: [
              TextUtils(
                text: "${products[index].price.toString()}\$",
                color: kActiveColor,
                fontWeight: FontWeight.w800,
                maxLines: 1,
              ),
              Spacer(),
              TextUtils(
                text: "${products[index].rating.rate} ☆",
                color: kActiveColor,
                fontWeight: FontWeight.w800,
                maxLines: 1,
              ),
            ],
          ),
        ],
      ),
    ),
  );
}
