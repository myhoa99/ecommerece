import 'package:e_commerece/models/product_model.dart';
import 'package:equatable/equatable.dart';

class Cart extends Equatable {
  final List<Product> products;

  const Cart({this.products = const <Product>[]});
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

  Map productQuantity(products) {
    var quantity = Map();
    products.forEach((product) {
      if (!quantity.containsKey(product)) {
        quantity[product] = 1;
      } else {
        quantity[product] += 1;
      }
    });
    return quantity;
  }

  @override
  List<Object?> get props => [products];
}
