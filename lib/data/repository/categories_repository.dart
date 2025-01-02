import 'package:shop/data/models/all_product_model.dart';
import 'package:shop/data/models/categories_model.dart';
import 'package:shop/data/services/network/dio/dio_helper.dart';

class CategoriesRepository{

  late final DioHelper dioHelper=DioHelper();
  CategoriesRepository();

  Future<List<Categories>> getAllCategories () async{
    final products = await dioHelper.getAllCategory(url: "products/categories");
    return products.map((product)=>Categories.fromJson(product)).toList();
  }
  Future<List<Product>> getinCategory (int name) async{
    final products = await dioHelper.getInCategory(url: "products/category/$name");
    return products.map((product)=>Product.fromJson(product)).toList();
  }

}