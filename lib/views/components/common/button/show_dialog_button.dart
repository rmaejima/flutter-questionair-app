import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ShowDialogButton extends StatelessWidget {
  ShowDialogButton({required this.dialog});
  Widget dialog;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => showDialog(context: context, builder: (BuildContext context) => dialog),
      // onPressed: null,
      // tooltip: 'Increment',
      child: Icon(Icons.add),
    );
  }
}
