import 'package:bluetouch/components/bt_textfield.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class NewSaep extends StatelessWidget {
  const NewSaep({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const ListTile(
          leading: Icon(Icons.water_drop_sharp),
          title: Text("SAEP"),
          subtitle: Text("Saisissez les informations sur le SAEP"),
        ),
        const SizedBox(
          width: 16,
        ),
        Card(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                const BtTextField(
                  borderRadius: BorderRadius.all(Radius.circular(4)),
                  label: "Nom de la commune",
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
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
