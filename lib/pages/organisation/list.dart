import 'package:bluetouch/components/bt_text_title.dart';
import 'package:bluetouch/components/bt_textfield.dart';
import 'package:bluetouch/models/organisme.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ListOrganisation extends StatelessWidget {
  const ListOrganisation({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ScrollController controller = ScrollController();
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
        Scrollbar(
          controller: controller,
          child: PaginatedDataTable(
            controller: controller,
            columns: const [
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
            ],
            source: Data(context),
          ),
        )
      ],
    );
  }
}

class Data extends DataTableSource {
  final BuildContext context;
  Data(this.context) : super();

  final List<Organisme> _data = List.generate(
      20,
      (index) => Organisme(index, 'Org $index', 'Dirigeant $index',
          "032 28 789 96", 'org$index@org.com', index % 2));

  @override
  DataRow? getRow(int index) {
    Organisme organisme = _data[index];
    ValueNotifier etatNotifier = ValueNotifier(organisme.etat);
    return DataRow(cells: [
      DataCell(Text(organisme.nom.toString())),
      DataCell(Text(organisme.nomDirigeant.toString())),
      DataCell(Text(organisme.telephone.toString())),
      DataCell(Text(organisme.email.toString())),
      DataCell(ValueListenableBuilder(
        builder: (context, val, _) {
          return DropdownButton(
            onChanged: ((value) {
              etatNotifier.value = value ?? 0;
            }),
            value: val,
            items: [
              DropdownMenuItem(
                  value: 0,
                  child: Text(
                    'Active',
                    style:
                        TextStyle(color: Theme.of(context).colorScheme.primary),
                  )),
              DropdownMenuItem(
                value: 1,
                child: Text(
                  'Suspendu',
                  style: TextStyle(color: Theme.of(context).colorScheme.error),
                ),
              ),
            ],
          );
        },
        valueListenable: etatNotifier,
      )),
      DataCell(Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.edit_outlined)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.delete_outline)),
        ],
      ))
    ]);
  }

  @override
  bool get isRowCountApproximate => false;

  @override
  int get rowCount => _data.length;

  @override
  int get selectedRowCount => 0;
}
