import 'package:flutter/material.dart';

import 'colors.dart';

const double kElevation = 10;

const EdgeInsets kScaffoldPadding = EdgeInsets.symmetric(horizontal: 16.0);

const BorderRadius kSmallRadius = BorderRadius.all(Radius.circular(8));
const BorderRadius kMediumRadius = BorderRadius.all(Radius.circular(12));
const BorderRadius kLargeRadius = BorderRadius.all(Radius.circular(16));

const double kTabBarHeight = 48;
const BorderRadius kTabBarRadius = BorderRadius.all(Radius.circular(24));

const RoundedRectangleBorder kSmallBorder = RoundedRectangleBorder(borderRadius: kSmallRadius);
const RoundedRectangleBorder kMediumBorder = RoundedRectangleBorder(borderRadius: kMediumRadius);
const RoundedRectangleBorder kLargeBorder = RoundedRectangleBorder(borderRadius: kLargeRadius);

const Duration kSplashDuration = Duration(seconds: 2);

const Duration kAnimationDuration = Duration(milliseconds: 200);

const Duration kDefaultDuration = Duration(milliseconds: 250);

const Duration kDelayDuration = Duration(seconds: 3);

const headingStyle = TextStyle(
  fontSize: 28,
  fontWeight: FontWeight.bold,
  color: Colors.black,
  height: 1.5,
);

final otpInputDecoration = InputDecoration(
  contentPadding: const EdgeInsets.symmetric(vertical: 15),
  border: outlineInputBorder(),
  focusedBorder: outlineInputBorder(),
  enabledBorder: outlineInputBorder(),
);

OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(15),
    borderSide: const BorderSide(color: kTextColor),
  );
}
