import 'package:shop_app/constants/constants.dart';

extension Validator on String {
  bool get isValidEmail =>
      RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(this);

  bool get isValidMobileNumber => RegExp(r"^[6-9]\d{9}$").hasMatch(this);
}

extension Percentage on double {
  double get onePercent => (this * 0.01).roundToDouble();

  double get twoPercent => (this * 0.02).roundToDouble();

  double get twoPointFivePercent => (this * 0.025).roundToDouble();

  double get threePercent => (this * 0.03).roundToDouble();

  double get fivePercent => (this * 0.05).roundToDouble();

  double get sixPointFivePercent => (this * 0.065).roundToDouble();

  double get sevenPointFivePercent => (this * 0.075).roundToDouble();

  double get tenPercent => (this * 0.1).roundToDouble();

  double get twelvePercent => (this * 0.12).roundToDouble();

  double get fifteenPercent => (this * 0.15).roundToDouble();

  double get twentyPercent => (this * 0.2).roundToDouble();

  double get twentyFivePercent => (this * 0.25).roundToDouble();

  double get thirtyPercent => (this * 0.3).roundToDouble();

  double get thirtyFivePercent => (this * 0.35).roundToDouble();

  double get fortyPercent => (this * 0.4).roundToDouble();

  double get fiftyPercent => (this * 0.5).roundToDouble();

  double get seventyPercent => (this * 0.7).roundToDouble();

  double get eightyPercent => (this * 0.8).roundToDouble();

  double get eightyFivePercent => (this * 0.85).roundToDouble();

  double get ninetyPercent => (this * 0.9).roundToDouble();

  double get ninetyFivePercent => (this * 0.95).roundToDouble();
}

extension DiscountString on DiscountType {
  String get text {
    switch (this) {
      case DiscountType.fixed:
        return 'fixed';
      case DiscountType.percent:
        return 'percent';
      case DiscountType.none:
        return 'none';
    }
  }
}

extension GenderString on Gender {
  String get text {
    switch (this) {
      case Gender.male:
        return 'male';
      case Gender.female:
        return 'female';
      case Gender.others:
        return 'others';
      case Gender.notSpecified:
        return 'not specified';
    }
  }
}

extension ToType on String {
  DiscountType get discountType {
    if (this == 'fixed') {
      return DiscountType.fixed;
    } else if (this == 'percent') {
      return DiscountType.percent;
    } else {
      return DiscountType.none;
    }
  }

  Gender get genderType {
    if (this == 'male') {
      return Gender.male;
    } else if (this == 'female') {
      return Gender.female;
    } else if (this == 'others') {
      return Gender.others;
    } else {
      return Gender.notSpecified;
    }
  }
}
