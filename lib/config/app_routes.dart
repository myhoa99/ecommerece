import 'package:e_commerece/models/product_model.dart';
import 'package:e_commerece/screens/cart/cart_screen.dart';
import 'package:e_commerece/screens/catalog/catalog_screen.dart';
import 'package:e_commerece/screens/home/home_screen.dart';
import 'package:e_commerece/screens/product/product_screen.dart';
import 'package:e_commerece/screens/splash/splash.dart';
import 'package:e_commerece/screens/wishlist/wishlist_screen.dart';
import 'package:flutter/material.dart';

import '../models/category_model.dart';

class AppRouter {
  static Route onGenerateRoute(RouteSettings settings) {
    print('This is route: ${settings.name}');
    switch (settings.name) {
      case '/':
        return HomeScreen.route();
      case HomeScreen.routeName:
        return HomeScreen.route();
      case SplashScreen.routeName:
        return SplashScreen.route();

      case CartScreen.routeName:
        return CartScreen.route();
      case ProductScreen.routeName:
        return ProductScreen.route(product: settings.arguments as Product);
      case CatalogScreen.routeName:
        return CatalogScreen.route(category: settings.arguments as Category);
      case WishListScreen.routeName:
        return WishListScreen.route();
      default:
        return _errorRoute();
    }
  }

  static Route _errorRoute() {
    return MaterialPageRoute(
        settings: RouteSettings(name: '/error'),
        builder: (_) => Scaffold(
              appBar: AppBar(title: Text('error')),
            ));
  }
}
