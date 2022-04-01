import 'dart:convert';

import 'product_model.dart';

class CartModal {
  final ProductModel product;
  final int quantity;

  const CartModal({
    required this.product,
    required this.quantity,
  });

  CartModal copyWith({
    ProductModel? product,
    int? quantity,
  }) {
    return CartModal(
      product: product ?? this.product,
      quantity: quantity ?? this.quantity,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'product': product.toMap(),
      'quantity': quantity,
    };
  }

  factory CartModal.fromMap(Map<String, dynamic> map) {
    return CartModal(
      product: ProductModel.fromMap(map['product']),
      quantity: map['quantity']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory CartModal.fromJson(String source) =>
      CartModal.fromMap(json.decode(source));

  @override
  String toString() => 'CartModal(product: $product, quantity: $quantity)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is CartModal &&
        other.product == product &&
        other.quantity == quantity;
  }

  @override
  int get hashCode => product.hashCode ^ quantity.hashCode;
}

// Demo data for our cart

List<CartModal> demoCarts = [
  CartModal(product: demoProducts[0], quantity: 2),
  CartModal(product: demoProducts[1], quantity: 1),
  CartModal(product: demoProducts[3], quantity: 1),
];
