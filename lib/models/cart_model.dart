import 'package:e_commerece/models/product_model.dart';
import 'package:equatable/equatable.dart';

class Cart extends Equatable {
  Cart();
  double get subTotal =>
      products.fold(0, (total, current) => total + current.price!);

  double deliveryFee(subTotal) {
    if (subTotal > 30.00) {
      return 0.0;
    } else {
      return 30.00;
    }
  }

  double total(subTotal, deliveryFee) {
    return subTotal + deliveryFee(subTotal);
  }

  String freeDelivery(subTotal) {
    if (subTotal >= 30.0) {
      return ' You can Free Delivery';
    } else {
      double missing = 30.0 - subTotal;
      return 'Add ${missing.toStringAsFixed(2)}  for FREE Delivery';
    }
  }

  String get subTotalstring => subTotal.toStringAsFixed(2);
  String get totalString => total(subTotal, deliveryFee).toStringAsFixed(2);
  String get deliveryFeeString => deliveryFee(subTotal).toStringAsFixed(2);
  String get freeDeliverystring => freeDelivery(subTotal);
  List<Product> products = const [
    Product(
        name: 'Smoothies',
        category: 'Smoothies',
        imageUrl:
            'https://myfoodbook.com.au/sites/default/files/collections_image/Smoothie_recipes.jpg',
        price: 39.99,
        isRecommend: true,
        isPopular: false),
    Product(
        name: 'Mango',
        category: 'Smoothies',
        imageUrl:
            'https://giadungthongminhvn.com/Systems/2021/06/16/7-cong-thuc-smoothies-cho-nguoi-bi-tao-bon.png',
        price: 19.00,
        isRecommend: false,
        isPopular: true),
    Product(
        name: 'Banana',
        category: 'Smoothies',
        imageUrl:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS54BKe2Ah6Y7nGIpJq7-k8bKzKVPYBv0eJz64NLI1dBhO21RQBBYDS2PEOTSeyWNU4GaQ&usqp=CAU',
        price: 31.99,
        isRecommend: true,
        isPopular: false),
    Product(
        name: 'Smoothies',
        category: 'Smoothies',
        imageUrl:
            'https://lifemadesweeter.com/wp-content/uploads/5-Healthy-Smoothies-Easy-Breakfast-Fruit-Smoothie-Recipes-Photo-Picture.jpg',
        price: 49.99,
        isRecommend: true,
        isPopular: true),
    Product(
        name: 'Smoothies',
        category: 'Milk Tea',
        imageUrl:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQiODVspadd6ih79LB2FdDK-zWtz7cVXjPDXw&usqp=CAU',
        price: 33.000,
        isRecommend: true,
        isPopular: true),
    Product(
        name: 'Coffee',
        category: 'Coffee',
        imageUrl:
            'https://www.eatthis.com/wp-content/uploads/sites/4/2020/11/blueberry-peach-strawberry-smoothie.jpg?quality=82&strip=1',
        price: 42.000,
        isRecommend: true,
        isPopular: true),
    Product(
        name: 'Smoothies',
        category: 'Matcha',
        imageUrl:
            'https://lifemadesweeter.com/wp-content/uploads/5-Healthy-Smoothies-Easy-Breakfast-Fruit-Smoothie-Recipes-Photo-Picture.jpg',
        price: 49.000,
        isRecommend: true,
        isPopular: true),
    Product(
        name: 'Soft Drink',
        category: 'Smoothies',
        imageUrl:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQiODVspadd6ih79LB2FdDK-zWtz7cVXjPDXw&usqp=CAU',
        price: 33.000,
        isRecommend: true,
        isPopular: false),
    Product(
        name: 'Smoothies',
        category: 'Fruit',
        imageUrl:
            'https://www.eatthis.com/wp-content/uploads/sites/4/2020/11/blueberry-peach-strawberry-smoothie.jpg?quality=82&strip=1',
        price: 42.000,
        isRecommend: false,
        isPopular: true),
  ];

  @override
  List<Object?> get props => [];
}
