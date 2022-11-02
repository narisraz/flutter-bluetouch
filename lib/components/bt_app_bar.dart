import 'package:flutter/material.dart';

class BtAppBar extends StatelessWidget {
  const BtAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text('SAEP'),
      actions: [
        Row(
          children: const [
            Text('Naris'),
            SizedBox(
              width: 8,
            ),
            CircleAvatar(),
            SizedBox(
              width: 16,
            ),
          ],
        )
      ],
    );
  }
}
