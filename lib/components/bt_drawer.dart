import 'package:flutter/material.dart';

class BtDrawer extends StatelessWidget {
  const BtDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(0),
      shape: const BeveledRectangleBorder(),
      child: SizedBox(
        width: 250,
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
      ),
    );
  }
}
