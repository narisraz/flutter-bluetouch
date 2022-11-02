import 'package:flutter/material.dart';

class BtTextField extends StatelessWidget {
  final Icon? prefixIcon;
  final BorderRadius? borderRadius;
  final String? hintText;

  const BtTextField({
    Key? key,
    this.borderRadius,
    this.prefixIcon,
    this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 35,
      child: TextField(
        decoration: InputDecoration(
            prefixIcon: prefixIcon,
            contentPadding: const EdgeInsets.all(4),
            filled: true,
            hintText: hintText,
            border: OutlineInputBorder(
                borderRadius: borderRadius ?? BorderRadius.circular(50),
                borderSide: BorderSide.none)),
      ),
    );
  }
}
