import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop/data/repository/all_products_repository.dart';
import 'package:shop/data/services/network/dio/dio_helper.dart';
import 'package:shop/utils/loading_widget.dart';
import 'package:shop/utils/textUtils.dart';
import 'package:shop/utils/themes.dart';
import 'package:shop/view/layout/bottom_nav_bar_layout/home_layout/custom_search_field.dart';
import 'package:shop/view/layout/bottom_nav_bar_layout/home_layout/product_card.dart';
import 'package:shop/view_model/cubit/main_cubit/main_cubit.dart';
import 'package:shop/view_model/cubit/main_cubit/main_state.dart';
import 'package:sizer/sizer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(

      child: Container(
        alignment: AlignmentDirectional.topStart,
        padding: EdgeInsets.symmetric(horizontal: 5.w),
        child: Column(
          textDirection: TextDirection.rtl,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TextUtils(text: "اهلا مصطفى"),
            TextUtils(
                text: "ابحث عن منتج رائع يناسب اسلوبك",
                fontSize: 15.sp,
                fontWeight: FontWeight.bold),
            SizedBox(
              height: 2.h,
            ),
            customSearch(),
            SizedBox(
              height: 2.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 1.h),
              child: Row(
                children: [
                  const TextUtils(
                      text: "عرض المنتجات", fontWeight: FontWeight.bold),
                  const Spacer(),
                  TextButton(
                    onPressed: () {
                      debugPrint("الكل");
                    },
                    child: TextUtils(text: "الكل", color: kActiveColor),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 57.h,

              child: BlocBuilder<MainCubit, MainState>(

                builder: (context, state) {


                   if(MainCubit.get(context).products.isNotEmpty ||state is ProductsLoded ){
                     print(MainCubit.get(context).products);
                     return GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          childAspectRatio: 2 / 2.8,
                          crossAxisSpacing: 1.5.h,
                          mainAxisSpacing: 1.5.h),
                      itemCount: 8,
                      itemBuilder: (BuildContext ctx, index) {
                        return productCard(index,context);
                      });}
                  else {
                     return  loadingWidget();
                   }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
