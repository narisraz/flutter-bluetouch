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
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.all(16)
          )
        )
      ),
      darkTheme: ThemeData(
        colorScheme: darkColorScheme
      ),
      home: Scaffold(
        body: Row(
          children: [
            const LeftDrawer(),
            Expanded(
              child: Column(
                children: [
                  const BtAppBar(),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Liste des SAEP', style: Theme.of(context).textTheme.titleLarge,),
                            ElevatedButton.icon(onPressed: () {}, label: const Text('Nouveau'), icon: const Icon(Icons.add),)
                          ],
                        ),
                        const SizedBox(height: 16,),
                        Card(
                          child: DataTable(columns: const [
                            DataColumn(label: Text('Nom')),
                            DataColumn(label: Expanded(child: Text('Actions', textAlign: TextAlign.end,))),
                          ], rows: [
                            DataRow(cells: [
                              const DataCell(Text('1')),
                              DataCell(Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  IconButton(onPressed: () {}, icon: const Icon(Icons.remove_red_eye_outlined)),
                                  IconButton(onPressed: () {}, icon: const Icon(Icons.edit_outlined)),
                                  IconButton(onPressed: () {}, icon: const Icon(Icons.delete_outline)),
                                ],
                              ))
                            ])
                          ]),
                        )
                      ],
                    ),
                  )
                ],
              )
            )
          ],
        ),
      ),
    );
  }
}

class BtAppBar extends StatelessWidget {
  const BtAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text('SAEP'),
      actions: [
        Row(
          children: const [
            Text('Naris'),
            SizedBox(width: 8,),
            CircleAvatar(),
            SizedBox(width: 16,),
          ],
        )
      ],
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
