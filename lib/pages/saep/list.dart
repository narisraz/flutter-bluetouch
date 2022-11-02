import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListSaep extends StatelessWidget {
  const ListSaep({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: const [
                  Text(
                    'SAEP',
                  ),
                ],
              ),
              ElevatedButton.icon(
                onPressed: () {},
                label: const Text('Nouveau'),
                icon: const Icon(Icons.add),
              )
            ],
          ),
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
                      icon: const Icon(Icons.remove_red_eye_outlined)),
                  IconButton(
                      onPressed: () {}, icon: const Icon(Icons.edit_outlined)),
                  IconButton(
                      onPressed: () {}, icon: const Icon(Icons.delete_outline)),
                ],
              ))
            ])
          ]),
        )
      ],
    );
  }
}
