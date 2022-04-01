import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'package:shop_app/models/models.dart';

import '../constants/constants.dart';

class UserModel {
  final String firstName;
  final String? middleName;
  final String lastName;
  final String phoneNo;
  final String emailId;
  final String password;
  final Gender gender;
  final List<ProductModel> wishlist;
  final List<CartModal> cart;
  final List<AddressModel> addresses;
  final String? defaultAddressId;

  const UserModel({
    required this.firstName,
    this.middleName,
    required this.lastName,
    required this.phoneNo,
    required this.emailId,
    required this.password,
    required this.gender,
    required this.wishlist,
    required this.cart,
    required this.addresses,
    this.defaultAddressId,
  });

  UserModel copyWith({
    String? firstName,
    String? middleName,
    String? lastName,
    String? phoneNo,
    String? emailId,
    String? password,
    Gender? gender,
    List<ProductModel>? wishlist,
    List<CartModal>? cart,
    List<AddressModel>? addresses,
    String? defaultAddressId,
  }) {
    return UserModel(
      firstName: firstName ?? this.firstName,
      middleName: middleName ?? this.middleName,
      lastName: lastName ?? this.lastName,
      phoneNo: phoneNo ?? this.phoneNo,
      emailId: emailId ?? this.emailId,
      password: password ?? this.password,
      gender: gender ?? this.gender,
      wishlist: wishlist ?? this.wishlist,
      cart: cart ?? this.cart,
      addresses: addresses ?? this.addresses,
      defaultAddressId: defaultAddressId ?? this.defaultAddressId,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'firstName': firstName,
      'middleName': middleName,
      'lastName': lastName,
      'phoneNo': phoneNo,
      'emailId': emailId,
      'password': password,
      'gender': gender.text,
      'wishlist': wishlist.map((x) => x.toMap()).toList(),
      'cart': cart.map((x) => x.toMap()).toList(),
      'addresses': addresses.map((x) => x.toMap()).toList(),
      'defaultAddressId': defaultAddressId,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      firstName: map['firstName'] ?? '',
      middleName: map['middleName'],
      lastName: map['lastName'] ?? '',
      phoneNo: map['phoneNo'] ?? '',
      emailId: map['emailId'] ?? '',
      password: map['password'] ?? '',
      gender: (map['gender'] as String).genderType,
      wishlist: List<ProductModel>.from(
          map['wishlist']?.map((x) => ProductModel.fromMap(x))),
      cart: List<CartModal>.from(map['cart']?.map((x) => CartModal.fromMap(x))),
      addresses: List<AddressModel>.from(
          map['addresses']?.map((x) => AddressModel.fromMap(x))),
      defaultAddressId: map['defaultAddressId'],
    );
  }

  String toJson() => json.encode(toMap());

  factory UserModel.fromJson(String source) =>
      UserModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'UserModel(firstName: $firstName, middleName: $middleName, lastName: $lastName, phoneNo: $phoneNo, emailId: $emailId, password: $password, gender: $gender, wishlist: $wishlist, cart: $cart, addresses: $addresses, defaultAddressId: $defaultAddressId)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is UserModel &&
        other.firstName == firstName &&
        other.middleName == middleName &&
        other.lastName == lastName &&
        other.phoneNo == phoneNo &&
        other.emailId == emailId &&
        other.password == password &&
        other.gender == gender &&
        listEquals(other.wishlist, wishlist) &&
        listEquals(other.cart, cart) &&
        listEquals(other.addresses, addresses) &&
        other.defaultAddressId == defaultAddressId;
  }

  @override
  int get hashCode {
    return firstName.hashCode ^
        middleName.hashCode ^
        lastName.hashCode ^
        phoneNo.hashCode ^
        emailId.hashCode ^
        password.hashCode ^
        gender.hashCode ^
        wishlist.hashCode ^
        cart.hashCode ^
        addresses.hashCode ^
        defaultAddressId.hashCode;
  }
}
