import 'package:bluetouch/color_schemes.dart';
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
        brightness: Brightness.light,
        colorScheme: lightColorScheme,
      ),
      darkTheme: ThemeData(
        colorScheme: darkColorScheme
      ),
      home: Scaffold(
        body: Row(
          children: [
            const LeftDrawer(),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('SAEP', style: Theme.of(context).textTheme.titleMedium),
                        Row(
                          children: [
                            Text('Naris Razafimahatratra', style: Theme.of(context).textTheme.titleMedium,),
                            const SizedBox(
                              width: 8,
                            ),
                            const CircleAvatar()
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class LeftDrawer extends StatelessWidget {
  const LeftDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: const [
          DrawerHeader(child: Text('data')),
          ListTile(
            leading: Icon(Icons.water_damage),
            title: Text('SAEP'),
          )
        ],
      ),
    );
  }
}
