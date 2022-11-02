import 'package:flutter/material.dart';

class BtTextTitle extends StatelessWidget {
  final String title;

  const BtTextTitle({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
    );
  }
}
