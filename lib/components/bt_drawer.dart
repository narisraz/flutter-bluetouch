import 'package:flutter/material.dart';

class BtDrawer extends StatelessWidget {
  const BtDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const DrawerHeader(child: FlutterLogo()),
          ListTile(
            onTap: () {},
            leading: const Icon(Icons.water_damage),
            title: const Text('SAEP'),
          )
        ],
      ),
    );
  }
}
