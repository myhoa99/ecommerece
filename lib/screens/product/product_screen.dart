import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_commerece/blocs/wishlist/wishlist_bloc.dart';
import 'package:e_commerece/models/product_model.dart';
import 'package:e_commerece/widgets/custom_navigator.dart';
import 'package:e_commerece/widgets/hero_carousel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../widgets/custom_appbar.dart';

class ProductScreen extends StatelessWidget {
  static const String routeName = '/product';

  const ProductScreen({super.key, required this.product});
  static Route route({required Product product}) {
    return MaterialPageRoute(
      settings: RouteSettings(name: routeName),
      builder: (_) => ProductScreen(product: product),
    );
  }

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(
          title: product.name,
        ),
        bottomNavigationBar: BottomAppBar(
          color: Colors.black,
          child: Container(
              margin: EdgeInsets.only(right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.share,
                        color: Colors.white,
                      )),
                  BlocBuilder<WishlistBloc, WishlistState>(
                    builder: (context, state) {
                      return IconButton(
                          onPressed: () {
                            context
                                .read<WishlistBloc>()
                                .add(AddWishlistProduct(product));
                            final snackBar = SnackBar(
                                content: Text('Added to your WishList'));
                            ScaffoldMessenger.of(context)
                                .showSnackBar(snackBar);
                          },
                          icon: const Icon(
                            Icons.favorite,
                            color: Colors.white,
                          ));
                    },
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(primary: Colors.white),
                      onPressed: () {},
                      child: Text(
                        'ADD TO CART',
                        style: Theme.of(context).textTheme.headline3,
                      ))
                ],
              )),
        ),
        body: ListView(
          children: [
            CarouselSlider(
              options: CarouselOptions(
                  aspectRatio: 1.5,
                  viewportFraction: 0.9,
                  enlargeCenterPage: true,
                  enlargeStrategy: CenterPageEnlargeStrategy.height),
              items: [HeroCarouselCard(product: product)],
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Stack(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 60,
                    alignment: Alignment.bottomCenter,
                    color: Colors.black.withAlpha(50),
                  ),
                  Container(
                    padding: EdgeInsets.all(16),
                    margin: EdgeInsets.all(5),
                    width: MediaQuery.of(context).size.width - 10,
                    height: 50,
                    color: Colors.black,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            product.name ?? '',
                            style: Theme.of(context)
                                .textTheme
                                .headline5!
                                .copyWith(color: Colors.white),
                          ),
                          Text(
                            '${product.price}',
                            style: Theme.of(context)
                                .textTheme
                                .headline5!
                                .copyWith(color: Colors.white),
                          )
                        ]),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: ExpansionTile(
                initiallyExpanded: true,
                title: Text('Product Information',
                    style: Theme.of(context).textTheme.headline3),
                children: [
                  ListTile(
                    title: Text(
                      'A smoothie is just a drink made from fresh fruits by pureeing with a few teaspoons of sweetened condensed milk, crushed ice and fresh fruit. Smoothies are a nutritious drink rich in vitamins that are good for health.',
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: ExpansionTile(
                initiallyExpanded: true,
                title: Text('Delivery Information',
                    style: Theme.of(context).textTheme.headline3),
                children: [
                  ListTile(
                    title: Text(
                      'A smoothie is just a drink made from fresh fruits by pureeing with a few teaspoons of sweetened condensed milk, crushed ice and fresh fruit. Smoothies are a nutritious drink rich in vitamins that are good for health.',
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                  )
                ],
              ),
            )
          ],
        ));
  }
}
