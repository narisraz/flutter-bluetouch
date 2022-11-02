import 'package:bluetouch/components/bt_layout.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bluetouch',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          useMaterial3: true,
          brightness: Brightness.light,
          colorSchemeSeed: Colors.blue,
          scaffoldBackgroundColor: Colors.grey.shade100,
          appBarTheme: AppBarTheme(
            backgroundColor: Colors.grey.shade100,
          ),
          cardTheme: const CardTheme(surfaceTintColor: Colors.white)),
      darkTheme: ThemeData(
          useMaterial3: true,
          brightness: Brightness.dark,
          colorSchemeSeed: Colors.blue),
      home: const BtLayout(),
    );
  }
}
