import 'package:restaurant_manager/components/dls_customappbar.dart';
import 'package:restaurant_manager/components/dls_productcard.dart';
import 'package:restaurant_manager/model/category_model.dart';
import 'package:restaurant_manager/model/product_model.dart';
import 'package:flutter/material.dart';

class CatalogView extends StatelessWidget {
  static const String routeName = '/catalog';

  static Route route({required CategoryModel category}) {
    return MaterialPageRoute(
        settings: const RouteSettings(name: routeName),
        builder: (context) => CatalogView(category: category));
  }

  final CategoryModel category;

  const CatalogView({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    final List<ProductModel> categoryProducts = ProductModel.products
        .where((product) => product.productCategory == category.title)
        .toList();

    return Scaffold(
      appBar: CustomAppBar(appbarHeight: 50, title: category.title),
      body: GridView.builder(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 16.0),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, childAspectRatio: 1.15),
          itemCount: categoryProducts.length,
          itemBuilder: (BuildContext context, int index) {
            return Center(child: ProductCard(product: categoryProducts[index]));
          }),
    );
  }
}
