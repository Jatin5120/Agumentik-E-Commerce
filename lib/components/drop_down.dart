import 'package:flutter/material.dart';

class DropDown<T> extends StatelessWidget {
  const DropDown({
    Key? key,
    this.label,
    this.hintText,
    required this.items,
    this.itemStyle,
    this.value,
    required this.onChanged,
    this.padding,
  }) : super(key: key);

  final String? label;
  final String? hintText;
  final List<T> items;
  final TextStyle? itemStyle;
  final T? value;
  final void Function(T?) onChanged;
  final EdgeInsets? padding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? const EdgeInsets.only(top: 12),
      child: SizedBox(
        height: 48,
        child: DropdownButtonFormField<T>(
          alignment: Alignment.centerLeft,
          hint: Text(
            hintText ?? 'Select $label',
            style: const TextStyle(
              color: Colors.grey,
            ),
          ),
          items: items
              .map(
                (type) => DropdownMenuItem<T>(
                  child: Text(
                    '$type',
                    style: itemStyle ??
                        const TextStyle(
                          color: Colors.black,
                        ),
                  ),
                  value: type,
                ),
              )
              .toList(),
          decoration: const InputDecoration(
            contentPadding: EdgeInsets.symmetric(horizontal: 12),
          ),
          icon: const Icon(Icons.keyboard_arrow_down_rounded),
          iconEnabledColor: Colors.black,
          value: value,
          onChanged: onChanged,
        ),
      ),
    );
  }
}
