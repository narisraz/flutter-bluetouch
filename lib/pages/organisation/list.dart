import 'package:bluetouch/components/bt_text_title.dart';
import 'package:bluetouch/components/bt_textfield.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ListOrganisation extends StatelessWidget {
  const ListOrganisation({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ScrollController scrollController = ScrollController();
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              const BtTextTitle(
                title: 'ORGANISATION',
              ),
              const SizedBox(
                width: 8,
              ),
              const Expanded(
                child: BtTextField(
                  prefixIcon: Icon(Icons.search),
                  hintText: 'Rechercher...',
                ),
              ),
              const Spacer(),
              ElevatedButton.icon(
                onPressed: () {
                  GoRouter.of(context).go("/admin/organisation/new");
                },
                label: const Text('Nouveau'),
                icon: const Icon(Icons.add),
              )
            ],
          ),
        ),
        LayoutBuilder(builder: (context, constraints) {
          return Card(
            child: Scrollbar(
              controller: scrollController,
              child: SingleChildScrollView(
                controller: scrollController,
                scrollDirection: Axis.horizontal,
                child: ConstrainedBox(
                  constraints:
                      BoxConstraints(minWidth: constraints.minWidth - 8),
                  child: DataTable(columns: const [
                    DataColumn(label: Text('Nom')),
                    DataColumn(label: Text('Nom du dirigeant')),
                    DataColumn(label: Text('Télephone')),
                    DataColumn(label: Text('Mail')),
                    DataColumn(label: Text('Etat')),
                    DataColumn(
                        label: Expanded(
                            child: Text(
                      'Actions',
                      textAlign: TextAlign.end,
                    ))),
                  ], rows: [
                    DataRow(cells: [
                      const DataCell(Text('1')),
                      const DataCell(Text('Naris')),
                      const DataCell(Text(
                        '032 63 498 64',
                      )),
                      const DataCell(Text('naris.raz@gmail.com')),
                      DataCell(DropdownButton(
                        onChanged: ((value) {}),
                        value: 1,
                        items: [
                          DropdownMenuItem(
                              value: 0,
                              child: Text(
                                'Active',
                                style: TextStyle(
                                    color:
                                        Theme.of(context).colorScheme.primary),
                              )),
                          DropdownMenuItem(
                            value: 1,
                            child: Text(
                              'Suspendu',
                              style: TextStyle(
                                  color: Theme.of(context).colorScheme.error),
                            ),
                          ),
                        ],
                      )),
                      DataCell(Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
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
                ),
              ),
            ),
          );
        })
      ],
    );
  }
}
