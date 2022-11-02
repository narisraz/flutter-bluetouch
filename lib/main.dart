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
      themeMode: ThemeMode.dark,
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
      home: Scaffold(
        body: Row(
          children: [
            const LeftDrawer(),
            Expanded(
                child: Column(
              children: [
                const BtAppBar(),
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Card(
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Liste des SAEP',
                                style: Theme.of(context).textTheme.titleLarge,
                              ),
                              TextButton.icon(
                                onPressed: () {},
                                label: const Text('Nouveau'),
                                icon: const Icon(Icons.add),
                              )
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Card(
                        child: DataTable(columns: const [
                          DataColumn(label: Text('Nom')),
                          DataColumn(
                              label: Expanded(
                                  child: Text(
                            'Actions',
                            textAlign: TextAlign.end,
                          ))),
                        ], rows: [
                          DataRow(cells: [
                            const DataCell(Text('1')),
                            DataCell(Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                        Icons.remove_red_eye_outlined)),
                                IconButton(
                                    onPressed: () {},
                                    icon: const Icon(Icons.edit_outlined)),
                                IconButton(
                                    onPressed: () {},
                                    icon: const Icon(Icons.delete_outline)),
                              ],
                            ))
                          ])
                        ]),
                      )
                    ],
                  ),
                )
              ],
            ))
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
            SizedBox(
              width: 8,
            ),
            CircleAvatar(),
            SizedBox(
              width: 16,
            ),
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
