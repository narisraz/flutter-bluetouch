import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class BtTextField extends StatelessWidget {
  final Icon? prefixIcon;
  final BorderRadius? borderRadius;
  final String? hintText;
  final String? label;
  final List<TextInputFormatter>? inputFormaters;

  const BtTextField({
    Key? key,
    this.borderRadius,
    this.prefixIcon,
    this.hintText,
    this.label,
    this.inputFormaters,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: TextFormField(
        inputFormatters: inputFormaters,
        decoration: InputDecoration(
            prefixIcon: prefixIcon,
            filled: true,
            hintText: hintText,
            label: Text(label ?? ''),
            isDense: true,
            border: OutlineInputBorder(
                borderRadius: borderRadius ?? BorderRadius.circular(50),
                borderSide: BorderSide.none)),
      ),
    );
  }
}
