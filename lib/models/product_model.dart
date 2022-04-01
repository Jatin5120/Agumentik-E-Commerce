import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:shop_app/constants/constants.dart';

class ProductModel {
  final String productId;
  final String selledId;
  final String title;
  final String description;
  final List<String> images;
  final List<Color> colors;
  final double rating;
  final double price;
  final bool isFavourite;
  final bool isPopular;
  final DiscountType discountType;
  final double discount;

  const ProductModel({
    required this.productId,
    required this.selledId,
    required this.title,
    required this.description,
    required this.images,
    required this.colors,
    this.rating = 0.0,
    required this.price,
    this.isFavourite = false,
    this.isPopular = false,
    this.discountType = DiscountType.none,
    required this.discount,
  });

  ProductModel copyWith({
    String? productId,
    String? selledId,
    String? title,
    String? description,
    List<String>? images,
    List<Color>? colors,
    double? rating,
    double? price,
    bool? isFavourite,
    bool? isPopular,
    DiscountType? discountType,
    double? discount,
  }) {
    return ProductModel(
      productId: productId ?? this.productId,
      selledId: selledId ?? this.selledId,
      title: title ?? this.title,
      description: description ?? this.description,
      images: images ?? this.images,
      colors: colors ?? this.colors,
      rating: rating ?? this.rating,
      price: price ?? this.price,
      isFavourite: isFavourite ?? this.isFavourite,
      isPopular: isPopular ?? this.isPopular,
      discountType: discountType ?? this.discountType,
      discount: discount ?? this.discount,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'productId': productId,
      'selledId': selledId,
      'title': title,
      'description': description,
      'images': images,
      'colors': colors.map((x) => x.value).toList(),
      'rating': rating,
      'price': price,
      'isFavourite': isFavourite,
      'isPopular': isPopular,
      'discountType': discountType.text,
      'discount': discount,
    };
  }

  factory ProductModel.fromMap(Map<String, dynamic> map) {
    return ProductModel(
      productId: map['productId'] ?? '',
      selledId: map['selledId'] ?? '',
      title: map['title'] ?? '',
      description: map['description'] ?? '',
      images: List<String>.from(map['images']),
      colors: List<Color>.from(map['colors']?.map((x) => Color(x))),
      rating: map['rating']?.toDouble() ?? 0.0,
      price: map['price']?.toDouble() ?? 0.0,
      isFavourite: map['isFavourite'] ?? false,
      isPopular: map['isPopular'] ?? false,
      discountType: (map['discountType'] as String).discountType,
      discount: map['discount']?.toDouble() ?? 0.0,
    );
  }

  String toJson() => json.encode(toMap());

  factory ProductModel.fromJson(String source) =>
      ProductModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'ProductModel(productId: $productId, selledId: $selledId, title: $title, description: $description, images: $images, colors: $colors, rating: $rating, price: $price, isFavourite: $isFavourite, isPopular: $isPopular, discountType: $discountType, discount: $discount)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ProductModel &&
        other.productId == productId &&
        other.selledId == selledId &&
        other.title == title &&
        other.description == description &&
        listEquals(other.images, images) &&
        listEquals(other.colors, colors) &&
        other.rating == rating &&
        other.price == price &&
        other.isFavourite == isFavourite &&
        other.isPopular == isPopular &&
        other.discountType == discountType &&
        other.discount == discount;
  }

  @override
  int get hashCode {
    return productId.hashCode ^
        selledId.hashCode ^
        title.hashCode ^
        description.hashCode ^
        images.hashCode ^
        colors.hashCode ^
        rating.hashCode ^
        price.hashCode ^
        isFavourite.hashCode ^
        isPopular.hashCode ^
        discountType.hashCode ^
        discount.hashCode;
  }
}

// Our demo Products

List<ProductModel> demoProducts = [
  const ProductModel(
    productId: '1',
    images: [
      "assets/images/ps4_console_white_1.png",
      "assets/images/ps4_console_white_2.png",
      "assets/images/ps4_console_white_3.png",
      "assets/images/ps4_console_white_4.png",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Wireless Controller for PS4™",
    discount: 10,
    discountType: DiscountType.percent,
    selledId: 'S1',
    price: 64.99,
    description: description,
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
  ),
  const ProductModel(
    productId: '2',
    images: [
      "assets/images/Image Popular Product 2.png",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Nike Sport White - Man Pant",
    discount: 10,
    discountType: DiscountType.percent,
    selledId: 'S2',
    price: 50.5,
    description: description,
    rating: 4.1,
    isPopular: true,
  ),
  const ProductModel(
    productId: '3',
    images: [
      "assets/images/glap.png",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Gloves XC Omega - Polygon",
    discount: 10,
    discountType: DiscountType.percent,
    selledId: 'S3',
    price: 36.55,
    description: description,
    rating: 4.1,
    isFavourite: true,
    isPopular: true,
  ),
  const ProductModel(
    productId: '4',
    images: [
      "assets/images/wireless headset.png",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Logitech Head",
    discount: 10,
    discountType: DiscountType.percent,
    selledId: 'S4',
    price: 20.20,
    description: description,
    rating: 4.1,
    isFavourite: true,
  ),
];

const String description =
    "Wireless Controller for PS4™ gives you what you want in your gaming from over precision control your games to sharing …";
