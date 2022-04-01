import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_app/components/components.dart';
import 'package:shop_app/constants/constants.dart';

class SocialCard extends StatelessWidget {
  const SocialCard({
    Key? key,
    required this.icon,
    this.onTap,
  }) : super(key: key);

  final String icon;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return TapHandler(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 16),
        padding: const EdgeInsets.all(16),
        height: 48,
        width: 48,
        decoration: const BoxDecoration(
          color: Color(0xFFF1F1F1),
          borderRadius: kLargeRadius,
        ),
        child: SvgPicture.asset(icon),
      ),
    );
  }
}
