import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:questionair_app/providers/questionaire_provider.dart';

enum AddDialog { player, alcohol, amount }

extension AddDialogExt on AddDialog {
  String get title {
    switch (this) {
      case AddDialog.player:
        return '誰が参加するの？';
      case AddDialog.alcohol:
        return 'お酒の種類は？';
      case AddDialog.amount:
        return 'どれくらい飲むの？';
    }
  }

  String get hintText {
    switch (this) {
      case AddDialog.player:
        return 'Name';
      case AddDialog.alcohol:
        return 'ウイスキーロック';
      case AddDialog.amount:
        return '三杯';
    }
  }
}

class AddListDialog extends HookWidget {
  AddListDialog(this.dialog);
  final AddDialog dialog;

  @override
  Widget build(BuildContext context) {
    var _textFieldController = TextEditingController();
    final _controller = useProvider(questionairProvider.notifier);

    return AlertDialog(
      title: Text(dialog.title),
      content: TextField(
        controller: _textFieldController,
        decoration: InputDecoration(
          hintText: dialog.hintText,
        ),
        autofocus: true,
        keyboardType: TextInputType.name,
      ),
      actions: <Widget>[
        TextButton(
          child: const Text('Cancel'),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        TextButton(
          child: const Text('OK'),
          onPressed: () {
            switch (dialog) {
              case (AddDialog.player):
                _controller.addPlayer(playerName: _textFieldController.text);
                break;
              case (AddDialog.alcohol):
                _controller.addAlcohol(alcohol: _textFieldController.text);
                break;
              case (AddDialog.amount):
                _controller.addAmount(amount: _textFieldController.text);
                break;
            }
            Navigator.of(context).pop();
          },
        ),
      ],
    );
  }
}
