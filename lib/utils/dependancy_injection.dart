import 'dart:ffi';

import 'package:get_it/get_it.dart';
import 'package:shop/data/repository/categories_repository.dart';


import '../data/repository/all_products_repository.dart';
import '../data/services/network/dio/dio_helper.dart';

final GetIt locator = GetIt.instance;
 Future<void> injectionGetIt()async {

    locator.registerSingleton<DioHelper>(()=>DioHelper());
    locator.registerSingleton<AllProductRepository>(()=>AllProductRepository(locator<DioHelper>()));
    locator.registerSingleton(()=>CategoriesRepository(locator<DioHelper>()));
    print("${locator}");
}