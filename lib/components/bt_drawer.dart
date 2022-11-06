import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BtDrawer extends StatelessWidget {
  const BtDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NavigationRail(
      onDestinationSelected: (value) => {
        if (value == 1) {GoRouter.of(context).go('/admin/organisation')}
      },
      extended: true,
      destinations: const [
        NavigationRailDestination(
            icon: Icon(Icons.dashboard), label: Text('Tableau de bord')),
        NavigationRailDestination(
            icon: Icon(Icons.water_drop_sharp), label: Text('Organisation')),
      ],
      selectedIndex: 1,
    );
  }
}
