import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_commerece/models/category_model.dart';
import 'package:e_commerece/models/product_model.dart';
import 'package:e_commerece/widgets/custom_navigator.dart';
import 'package:e_commerece/widgets/hero_carousel.dart';
import 'package:e_commerece/widgets/product_card.dart';
import 'package:e_commerece/widgets/section_title.dart';
import 'package:flutter/material.dart';

import '../../widgets/custom_appbar.dart';
import '../../widgets/product_carousel.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = '/';
  static Route route() {
    return MaterialPageRoute(
      settings: RouteSettings(name: routeName),
      builder: (_) => HomeScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Hana\'s Coffee',
      ),
      bottomNavigationBar: CustomNavi(),
      body: Column(
        children: [
          Container(
              child: CarouselSlider(
            options: CarouselOptions(
              aspectRatio: 1.5,
              viewportFraction: 0.9,
              enlargeCenterPage: true,
              enlargeStrategy: CenterPageEnlargeStrategy.height,
              autoPlay: true,
            ),
            items: Category.categories
                .map((category) => HeroCarouselCard(category: category))
                .toList(),
          )),
          SectionTitle(
            title: 'RECOMMEND',
          ),
          ProductCarousel(
              products: Product.products
                  .where((e) => e.isRecommend == true)
                  .toList()),
          SectionTitle(
            title: 'MOST POPULAR',
          ),
          ProductCarousel(
              products:
                  Product.products.where((e) => e.isPopular == true).toList()),
        ],
      ),
    );
  }
}
