import 'package:bluetouch/components/bt_app_bar.dart';
import 'package:bluetouch/components/bt_drawer.dart';
import 'package:bluetouch/pages/saep/list.dart';
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
      body: Row(
        children: [
          const BtDrawer(),
          Expanded(
              child: Column(
            children: const [
              BtAppBar(),
              Padding(
                padding: EdgeInsets.fromLTRB(16, 0, 16, 16),
                child: SingleChildScrollView(child: ListSaep()),
              )
            ],
          ))
        ],
      ),
    );
  }
}
