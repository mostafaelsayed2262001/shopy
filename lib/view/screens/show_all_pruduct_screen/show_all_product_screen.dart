import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop/utils/loading_widget.dart';
import 'package:shop/utils/textUtils.dart';
import 'package:shop/view/layout/bottom_nav_bar_layout/home_layout/product_card.dart';
import 'package:shop/view_model/cubit/main_cubit/main_cubit.dart';
import 'package:shop/view_model/cubit/main_cubit/main_state.dart';
import 'package:sizer/sizer.dart';

class ShowAllProductScreen extends StatelessWidget {
  const ShowAllProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextUtils(text: "All Products"),
        centerTitle: true,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart_outlined))
        ],

      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
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
                    itemCount: MainCubit.get(context).products.length,
                    itemBuilder: (BuildContext ctx, index) {
                      return productCard(index,context);
                    });}
              else {
                return  loadingWidget();
              }
            },
          ),
        ),
      ),
    );
  }
}
