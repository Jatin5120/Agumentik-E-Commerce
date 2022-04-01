import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FormLabel extends StatelessWidget {
  const FormLabel(
    this.label, {
    this.style,
    Key? key,
  })  : _isCaption = false,
        super(key: key);

  const FormLabel.caption(
    this.label, {
    this.style,
    Key? key,
  })  : _isCaption = true,
        super(key: key);

  final String label;
  final TextStyle? style;

  final bool _isCaption;

  @override
  Widget build(BuildContext context) {
    final TextStyle _style = style ??
        (_isCaption
            ? Get.textTheme.subtitle1!.copyWith(
                color: Colors.grey,
              )
            : Get.textTheme.bodyText1!.copyWith(
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ));
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8).copyWith(bottom: _isCaption ? null : 0),
      child: Text(
        label,
        style: _style,
      ),
    );
  }
}
