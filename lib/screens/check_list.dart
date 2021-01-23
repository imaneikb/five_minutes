import 'package:flutter/material.dart';

import 'dialog_helper.dart';


class CheckList extends StatefulWidget{
  @override
  _CheckListState createState() => _CheckListState();
}
class _CheckListState extends State<CheckList>{
  Map<String, bool> values = {
    'Le liquide de refroidissement ': false,
    'Le liquide de frein': false,
    'Le liquide de direction assistée': false,
    'huile moteur': false,
    'Les freins': false,
    'La pression de gonflage': false,
    'Le filtre à air et habitacle': false,
    'Eclairage et la signalisation': false,
  };

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      child: Scaffold(
        appBar: new AppBar(title: new Text('Vérification mécanique' ),backgroundColor: Colors.green[600]),
        body: ListView(
          children: values.keys.map((String key) {
            return CheckboxListTile(
              title: new Text(key),
              value: values[key],
              onChanged: (bool value) {
                setState(() {
                  values[key] = value;
                });
              },
            );
          }).toList(),
        ),
        
      ),onWillPop: () async {
      return await DialogHelper.exit(context);
    },
    );

  }
}