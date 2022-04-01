import 'dart:convert';

class AddressModel {
  final String firstName;
  final String lastName;
  final String phoneNo;
  final String houseNo;
  final String street;
  final String? landmark;
  final String city;
  final String state;
  final String pinCode;

  const AddressModel({
    required this.firstName,
    required this.lastName,
    required this.phoneNo,
    required this.houseNo,
    required this.street,
    this.landmark,
    required this.city,
    required this.state,
    required this.pinCode,
  });

  AddressModel copyWith({
    String? firstName,
    String? lastName,
    String? phoneNo,
    String? houseNo,
    String? street,
    String? landmark,
    String? city,
    String? state,
    String? pinCode,
  }) {
    return AddressModel(
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      phoneNo: phoneNo ?? this.phoneNo,
      houseNo: houseNo ?? this.houseNo,
      street: street ?? this.street,
      landmark: landmark ?? this.landmark,
      city: city ?? this.city,
      state: state ?? this.state,
      pinCode: pinCode ?? this.pinCode,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'firstName': firstName,
      'lastName': lastName,
      'phoneNo': phoneNo,
      'houseNo': houseNo,
      'street': street,
      'landmark': landmark,
      'city': city,
      'state': state,
      'pinCode': pinCode,
    };
  }

  factory AddressModel.fromMap(Map<String, dynamic> map) {
    return AddressModel(
      firstName: map['firstName'] ?? '',
      lastName: map['lastName'] ?? '',
      phoneNo: map['phoneNo'] ?? '',
      houseNo: map['houseNo'] ?? '',
      street: map['street'] ?? '',
      landmark: map['landmark'],
      city: map['city'] ?? '',
      state: map['state'] ?? '',
      pinCode: map['pinCode'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory AddressModel.fromJson(String source) =>
      AddressModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'AddressModel(firstName: $firstName, lastName: $lastName, phoneNo: $phoneNo, houseNo: $houseNo, street: $street, landmark: $landmark, city: $city, state: $state, pinCode: $pinCode)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is AddressModel &&
        other.firstName == firstName &&
        other.lastName == lastName &&
        other.phoneNo == phoneNo &&
        other.houseNo == houseNo &&
        other.street == street &&
        other.landmark == landmark &&
        other.city == city &&
        other.state == state &&
        other.pinCode == pinCode;
  }

  @override
  int get hashCode {
    return firstName.hashCode ^
        lastName.hashCode ^
        phoneNo.hashCode ^
        houseNo.hashCode ^
        street.hashCode ^
        landmark.hashCode ^
        city.hashCode ^
        state.hashCode ^
        pinCode.hashCode;
  }
}
