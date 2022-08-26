import 'package:e_commerece/widgets/custom_navigator.dart';
import 'package:flutter/material.dart';

import '../../widgets/custom_appbar.dart';

class CatalogScreen extends StatelessWidget {
  static const String routeName = '/';
  static Route route() {
    return MaterialPageRoute(
      settings: RouteSettings(name: routeName),
      builder: (_) => CatalogScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Catalog',
      ),
      bottomNavigationBar: CustomNavi(),
    );
  }
}
