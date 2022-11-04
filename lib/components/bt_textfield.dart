import 'package:flutter/material.dart';

class BtTextField extends StatelessWidget {
  final Icon? prefixIcon;
  final BorderRadius? borderRadius;
  final String? hintText;
  final String? label;

  const BtTextField({
    Key? key,
    this.borderRadius,
    this.prefixIcon,
    this.hintText,
    this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 35,
      child: TextField(
        decoration: InputDecoration(
            prefixIcon: prefixIcon,
            contentPadding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
            filled: true,
            hintText: hintText,
            label: Text(label ?? ''),
            border: OutlineInputBorder(
                borderRadius: borderRadius ?? BorderRadius.circular(50),
                borderSide: BorderSide.none)),
      ),
    );
  }
}
