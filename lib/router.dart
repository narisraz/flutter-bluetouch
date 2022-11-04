import 'package:bluetouch/components/bt_layout.dart';
import 'package:bluetouch/pages/saep/list.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  routes: [
    ShellRoute(
        builder: (context, state, child) => BtLayout(child: child),
        routes: [
          GoRoute(
            path: '/',
            builder: (BuildContext context, GoRouterState state) {
              return const ListSaep();
            },
          ),
        ])
  ],
);
