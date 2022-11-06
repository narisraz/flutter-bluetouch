import 'package:bluetouch/components/bt_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class NewOrganisation extends StatelessWidget {
  const NewOrganisation({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const ListTile(
          leading: Icon(Icons.water_drop_sharp),
          title: Text("ORGANISATION"),
          subtitle: Text("Saisissez les informations sur le ORGANISATION"),
        ),
        const SizedBox(
          width: 16,
        ),
        Card(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Row(
                  children: [
                    const Flexible(
                      child: BtTextField(
                        borderRadius: BorderRadius.all(Radius.circular(4)),
                        label: "Nom de la commune",
                      ),
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    Flexible(
                      child: BtTextField(
                        inputFormaters: [
                          FilteringTextInputFormatter.digitsOnly
                        ],
                        borderRadius:
                            const BorderRadius.all(Radius.circular(4)),
                        label: "Nombre de population",
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  children: const [
                    Flexible(
                      child: BtTextField(
                        borderRadius: BorderRadius.all(Radius.circular(4)),
                        label: "Région",
                      ),
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Flexible(
                      child: BtTextField(
                        borderRadius: BorderRadius.all(Radius.circular(4)),
                        label: "District",
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  children: [
                    Flexible(
                        child: DropdownButtonFormField(
                      value: 0,
                      onChanged: (value) {},
                      decoration: const InputDecoration(filled: true),
                      items: const [
                        DropdownMenuItem(
                          value: 0,
                          child: Text("Source de montagne"),
                        ),
                        DropdownMenuItem(
                          value: 1,
                          child: Text("Rivière"),
                        ),
                        DropdownMenuItem(
                          value: 2,
                          child: Text("Réservoir"),
                        ),
                      ],
                    )),
                    const SizedBox(
                      width: 16,
                    ),
                    Flexible(
                      child: BtTextField(
                        inputFormaters: [
                          FilteringTextInputFormatter.digitsOnly
                        ],
                        borderRadius:
                            const BorderRadius.all(Radius.circular(4)),
                        label: "Nombre de réservoir",
                      ),
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    const Flexible(
                      child: BtTextField(
                        borderRadius: BorderRadius.all(Radius.circular(4)),
                        label: "Capacité total réservoir (m3)",
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
