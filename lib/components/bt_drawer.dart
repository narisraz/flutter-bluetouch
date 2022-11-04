import 'package:flutter/material.dart';

class BtDrawer extends StatelessWidget {
  const BtDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NavigationRail(
      extended: true,
      destinations: const [
        NavigationRailDestination(
            icon: Icon(Icons.dashboard), label: Text('Tableau de bord')),
        NavigationRailDestination(
            icon: Icon(Icons.water_drop_sharp), label: Text('SAEP')),
      ],
      selectedIndex: 1,
    );
  }
}
