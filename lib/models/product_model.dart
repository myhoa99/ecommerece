import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_commerece/models/category_model.dart';
import 'package:equatable/equatable.dart';

class Product extends Equatable {
  final String? name;
  final String? category;
  final String? imageUrl;
  final double? price;
  final bool? isRecommend;
  final bool? isPopular;

  const Product(
      {this.name,
      this.category,
      this.imageUrl,
      this.price,
      this.isRecommend,
      this.isPopular});

  @override
  List<Object?> get props =>
      [name, category, imageUrl, price, isPopular, isRecommend];
  static Product fromSnapshot(DocumentSnapshot snap) {
    Product product = Product(
        name: snap['name'],
        category: snap['category'],
        imageUrl: snap['imageUrl'],
        price: snap['price'],
        isPopular: snap['isPopular'],
        isRecommend: snap['isRecommend']);
    return product;
  }

  static List<Product> products = const [
    Product(
        name: 'Smoothies',
        category: 'Smoothies',
        imageUrl:
            'https://myfoodbook.com.au/sites/default/files/collections_image/Smoothie_recipes.jpg',
        price: 39.000,
        isRecommend: true,
        isPopular: false),
    Product(
        name: 'Mango',
        category: 'Smoothies',
        imageUrl:
            'https://giadungthongminhvn.com/Systems/2021/06/16/7-cong-thuc-smoothies-cho-nguoi-bi-tao-bon.png',
        price: 19.000,
        isRecommend: false,
        isPopular: true),
    Product(
        name: 'Banana',
        category: 'Smoothies',
        imageUrl:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS54BKe2Ah6Y7nGIpJq7-k8bKzKVPYBv0eJz64NLI1dBhO21RQBBYDS2PEOTSeyWNU4GaQ&usqp=CAU',
        price: 31.000,
        isRecommend: true,
        isPopular: false),
    Product(
        name: 'Smoothies',
        category: 'Smoothies',
        imageUrl:
            'https://lifemadesweeter.com/wp-content/uploads/5-Healthy-Smoothies-Easy-Breakfast-Fruit-Smoothie-Recipes-Photo-Picture.jpg',
        price: 49.000,
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
}
