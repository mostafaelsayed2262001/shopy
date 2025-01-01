import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop/data/models/categories_model.dart';
import 'package:shop/utils/loading_widget.dart';

import 'package:shop/utils/textUtils.dart';
import 'package:shop/view_model/cubit/main_cubit/main_cubit.dart';
import 'package:shop/view_model/cubit/main_cubit/main_state.dart';
import 'package:sizer/sizer.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {

    List<String> categoriesImage = [
      "assets/categoryAssets/electronics.jpg",
      "assets/categoryAssets/jewelery.jpg",
      "assets/categoryAssets/imageCategory1.jpg",
      "assets/categoryAssets/women.jpg",
    ];
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      alignment: AlignmentDirectional.topStart,
      child: BlocBuilder<MainCubit, MainState>(

        builder: (context, state) {
          List<Categories> categories = MainCubit
              .get(context)
              .categories;
          if (state is CategoriesLoded||  MainCubit
              .get(context)
              .categories.isNotEmpty) {return   GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  childAspectRatio: 1.5 / 2.3,
                  crossAxisSpacing: 1.h,
                  mainAxisSpacing: 1.h),
              itemCount: categoriesImage.length,

              itemBuilder: (BuildContext ctx, index) {
                return  Container(
                  padding: EdgeInsets.all(1.h),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(borderRadius: BorderRadius
                            .circular(50)),
                        height: 15.h,
                        width: 30.w,
                        child: Image.asset(
                            categoriesImage[index],

                            fit: BoxFit.cover),
                      ),
                      const Spacer(),
                      Center(
                        child: TextUtils(
                            text: categories[index].name,
                            fontWeight: FontWeight.bold,
                            fontSize: 13.sp),
                      ),
                      const Spacer()
                    ],
                  ),
                ) ;
              });}
          else
             return loadingWidget();
        },
      ),
    );
  }
}
