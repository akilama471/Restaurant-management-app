import 'package:restaurant_manager/model/category_model.dart';
import 'package:restaurant_manager/model/product_model.dart';
import 'package:restaurant_manager/view/admin_view.dart';
import 'package:restaurant_manager/view/cart_view.dart';
import 'package:restaurant_manager/view/catalog_view.dart';
import 'package:restaurant_manager/view/main_view.dart';
import 'package:restaurant_manager/view/product_view.dart';
import 'package:restaurant_manager/view/profile_view.dart';
import 'package:flutter/material.dart';

class AppRoute {
  static Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MainView.route();
      case '/cart':
        return CartView.route();
      case '/profile':
        return ProfileView.route();
      case '/admin':
        return AdminView.route();
      case ProductView.routeName:
        return ProductView.route(product: settings.arguments as ProductModel);
      case CatalogView.routeName:
        return CatalogView.route(category: settings.arguments as CategoryModel);
      default:
        return _errorRoute();
    }
  }

  static Route _errorRoute() {
    return MaterialPageRoute(
        settings: const RouteSettings(name: '/error'),
        builder: (context) => Scaffold(
              appBar: AppBar(title: const Text('Error')),
            ));
  }
}
