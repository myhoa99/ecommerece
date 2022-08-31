import 'package:e_commerece/models/category_model.dart';
import 'package:e_commerece/widgets/custom_navigator.dart';
import 'package:e_commerece/widgets/product_card.dart';
import 'package:flutter/material.dart';

import '../../models/product_model.dart';
import '../../widgets/custom_appbar.dart';

class CatalogScreen extends StatelessWidget {
  static const String routeName = '/catalog';

  const CatalogScreen({super.key, required this.category});
  static Route route({required Category category}) {
    return MaterialPageRoute(
      settings: RouteSettings(name: routeName),
      builder: (_) => CatalogScreen(
        category: category,
      ),
    );
  }

  final Category category;

  @override
  Widget build(BuildContext context) {
    final List<Product> categoryProducts =
        Product.products.where((e) => e.category == category.name).toList();
    return Scaffold(
        appBar: CustomAppBar(
          title: category.name,
        ),
        bottomNavigationBar: CustomNavi(),
        body: GridView.builder(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 1.15,
            ),
            itemCount: categoryProducts.length,
            itemBuilder: (context, index) {
              return ProductCard(
                product: categoryProducts[index],
                widthFactor: 2.2,
              );
            }));
  }
}
