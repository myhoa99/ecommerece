import 'package:e_commerece/widgets/custom_navigator.dart';
import 'package:flutter/material.dart';

import '../../widgets/custom_appbar.dart';

class ProductScreen extends StatelessWidget {
  static const String routeName = '/';
  static Route route() {
    return MaterialPageRoute(
      settings: RouteSettings(name: routeName),
      builder: (_) => ProductScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Product',
      ),
      bottomNavigationBar: CustomNavi(),
    );
  }
}
