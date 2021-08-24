import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ShowDialogButton extends StatelessWidget {
  ShowDialogButton({required this.dialog});
  Widget dialog;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () => showDialog(context: context, builder: (BuildContext context) => dialog),
      tooltip: 'Increment',
      child: Icon(Icons.add),
    );
  }
}
