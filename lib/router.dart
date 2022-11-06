import 'package:bluetouch/components/bt_layout.dart';
import 'package:bluetouch/pages/organisation/list.dart';
import 'package:bluetouch/pages/organisation/new.dart';
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
              return const ListOrganisation();
            },
          ),
          GoRoute(
              path: '/admin',
              builder: ((context, state) => Container()),
              routes: [
                GoRoute(
                    path: 'organisation',
                    builder: (BuildContext context, GoRouterState state) {
                      return const ListOrganisation();
                    },
                    routes: [
                      GoRoute(
                        path: 'new',
                        builder: (BuildContext context, GoRouterState state) {
                          return const NewOrganisation();
                        },
                      ),
                    ]),
              ]),
        ])
  ],
);
