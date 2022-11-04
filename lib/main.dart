import 'package:bluetouch/router.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Bluetouch',
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: ThemeData(
          useMaterial3: true,
          brightness: Brightness.light,
          colorSchemeSeed: Colors.blue,
          dataTableTheme: const DataTableThemeData(
              headingTextStyle: TextStyle(fontWeight: FontWeight.bold))),
      darkTheme: ThemeData(
          useMaterial3: true,
          brightness: Brightness.dark,
          colorSchemeSeed: Colors.blue,
          dataTableTheme: const DataTableThemeData(
              headingTextStyle: TextStyle(fontWeight: FontWeight.bold))),
      routerConfig: router,
    );
  }
}
