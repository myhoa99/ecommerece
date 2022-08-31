import 'package:e_commerece/blocs/wishlist/wishlist_bloc.dart';
import 'package:e_commerece/models/product_model.dart';
import 'package:e_commerece/widgets/custom_navigator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../widgets/custom_appbar.dart';
import '../../widgets/product_card.dart';

class WishListScreen extends StatelessWidget {
  static const String routeName = '/wishlist';
  static Route route() {
    return MaterialPageRoute(
      settings: RouteSettings(name: routeName),
      builder: (_) => WishListScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(
          title: 'WishList',
        ),
        bottomNavigationBar: CustomNavi(),
        body:
            BlocBuilder<WishlistBloc, WishlistState>(builder: (context, state) {
          if (state is WishlistLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          if (state is WishlistLoaded) {
            return GridView.builder(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  childAspectRatio: 2.4,
                ),
                itemCount: state.wishlist.product.length,
                itemBuilder: (BuildContext context, int index) {
                  return Center(
                    child: ProductCard(
                      product: state.wishlist.product[index],
                      widthFactor: 1.1,
                      leftPosition: 180,
                      isWishList: true,
                    ),
                  );
                });
          } else {
            return Text('Something went wrong');
          }
        }));
  }
}
