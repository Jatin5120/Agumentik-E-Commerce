import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class InputField extends StatelessWidget {
  const InputField({
    Key? key,
    this.label,
    this.hint,
    this.padding,
    required this.controller,
    this.validator,
    this.textInputType = TextInputType.text,
    this.textInputAction = TextInputAction.next,
    this.textCapitalization = TextCapitalization.words,
    this.prefix,
    this.prefixIcon,
    this.suffix,
    this.suffixIcon,
    this.obscureText = false,
    this.readOnly = false,
    this.maxLength,
    this.maxLines = 1,
    this.inputFormatters,
    this.onFieldSubmitted,
    this.onChanged,
    this.onTap,
  }) : super(key: key);

  final String? label;
  final String? hint;
  final EdgeInsets? padding;
  final TextEditingController controller;
  final String? Function(String?)? validator;
  final TextInputType textInputType;
  final TextInputAction textInputAction;
  final TextCapitalization textCapitalization;
  final Widget? prefix;
  final Widget? prefixIcon;
  final Widget? suffix;
  final Widget? suffixIcon;
  final bool obscureText;
  final bool readOnly;
  final int? maxLength;
  final int? maxLines;
  final List<TextInputFormatter>? inputFormatters;
  final void Function(String)? onFieldSubmitted;
  final void Function(String)? onChanged;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? const EdgeInsets.only(top: 12),
      child: SizedBox(
        height: 48,
        child: TextFormField(
          controller: controller,
          decoration: InputDecoration(
            labelText: label,
            hintText: hint,
            hintStyle: Get.textTheme.bodyText2!.copyWith(
              color: Colors.grey[300],
            ),
            prefix: prefix,
            prefixIcon: prefixIcon,
            suffix: suffix,
            suffixIcon: suffixIcon,
            counterText: '',
            contentPadding: const EdgeInsets.symmetric(horizontal: 12),
          ),
          style: Get.textTheme.bodyText2!.copyWith(
            color: Colors.black,
          ),
          onFieldSubmitted: onFieldSubmitted,
          onChanged: onChanged,
          validator: validator,
          obscureText: obscureText,
          maxLines: maxLines ?? 1,
          maxLength: maxLength,
          keyboardType: textInputType,
          textInputAction: textInputAction,
          textCapitalization: textCapitalization,
          inputFormatters: inputFormatters,
          readOnly: readOnly,
          onTap: onTap,
        ),
      ),
    );
  }
}
