import 'package:shop/data/models/all_product_model.dart';
import 'package:shop/data/services/network/dio/dio_helper.dart';

class AllProductRepository{

   final DioHelper dioHelper;
  AllProductRepository(this.dioHelper);

  Future<List<Product>> getAllProducts () async{
    final categories = await dioHelper.getAllProducts(url: "products");
   return categories.map((category)=>Product.fromJson(category)).toList();
  }
  Future<Product> getProduct (int id) async{
    final products = await dioHelper.getProduct(url: "products/$id");
   return Product.fromJson(products);
  }

}