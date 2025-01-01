import 'package:shop/data/models/all_product_model.dart';
import 'package:shop/data/models/categories_model.dart';

class MainState {}

final class MainInitial extends MainState {}
class ProductsLoded extends MainState{
  late final List<Product> products;
  ProductsLoded(this.products);
}
class CategoriesLoded extends MainState{
  late final List<Categories> categories;
  CategoriesLoded(this.categories);
}