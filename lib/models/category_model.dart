import 'package:equatable/equatable.dart';

class Category extends Equatable {
  final int id;
  final String name;
  final String imageUrl;
  const Category({
    required this.id,
    required this.name,
    required this.imageUrl,
  });
  @override
  List<Object?> get props => [id, name, imageUrl];
  static List<Category> categories = const [
    Category(
        id: 1,
        name: 'Soft Drink',
        imageUrl:
            'https://vietucnews.net/wp-content/uploads/2019/07/nghien-cuu-chi-ra-uong-nuoc-trai-cay-hay-nuoc-ngot-hang-ngay-tang-nguy-co-ung-thu.jpg'),
    Category(
        id: 2,
        name: 'Smoothies',
        imageUrl:
            'https://cdn.tgdd.vn/Files/2022/02/15/1415678/che-do-an-kieng-smoothie-la-gi-nguon-goc-va-cach-thuc-hien-202202151101265848.jpg'),
    Category(
        id: 3,
        name: 'Milk Tea',
        imageUrl:
            'https://jarvis.vn/wp-content/uploads/2019/05/tra-pho-mai-kem-sua.jpg'),
    Category(
        id: 4,
        name: 'Fruit',
        imageUrl:
            'https://jarvis.vn/wp-content/uploads/2019/05/tra-hoa-qua.jpg'),
    Category(
        id: 5,
        name: 'Matcha',
        imageUrl:
            'https://jarvis.vn/wp-content/uploads/2019/05/matcha-tra-xanh.jpg'),
    Category(
        id: 6,
        name: 'Coffee',
        imageUrl:
            'https://jarvis.vn/wp-content/uploads/2019/05/cafe-latte.jpg'),
  ];
}
