import 'package:bluetouch/components/bt_drawer.dart';
import 'package:flutter/material.dart';

class BtLayout extends StatelessWidget {
  final Widget child;

  const BtLayout({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bluetouch'),
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
      ),
      body: Row(
        children: [
          const BtDrawer(),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
            child: child,
          ))
        ],
      ),
    );
  }
}
