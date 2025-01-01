import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop/data/models/all_product_model.dart';
import 'package:shop/data/models/categories_model.dart';
import 'package:shop/data/repository/all_products_repository.dart';
import 'package:shop/data/repository/categories_repository.dart';
import 'package:shop/data/services/network/dio/dio_helper.dart';
import 'package:shop/view_model/cubit/main_cubit/main_state.dart';

class MainCubit extends Cubit<MainState> {
  AllProductRepository allPruductRepository;
  CategoriesRepository categoriesRepository;
  List<Product> products = [];
  List<Categories> categories=[];

  MainCubit(this.allPruductRepository,this.categoriesRepository) : super(MainInitial());

  static MainCubit get(context) => BlocProvider.of<MainCubit>(context);

  List<Product> getAllPruducts() {
    allPruductRepository.getAllProducts().then((products) {
      emit(ProductsLoded(products));
      this.products = products;
    });
    return products;
  }

  List<Categories> getAllCategories() {

    categoriesRepository.getAllCategories().then((categories) {

      this.categories = categories;
      emit(CategoriesLoded(categories));
      print(categories);
    });

    return categories;
  }
}
