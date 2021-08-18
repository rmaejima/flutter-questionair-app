import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:questionair_app/providers/questionair_provider.dart';

// プレイヤー選択と共通化しても良さそう
class AddAlcoholDialog extends HookWidget {
  @override
  Widget build(BuildContext context) {
    var _textFieldController = TextEditingController();
    final _alcoholController = useProvider(questionairProvider.notifier);

    return AlertDialog(
      title: Text('追加したいお酒は？？'),
      content: TextField(
        controller: _textFieldController,
        decoration: InputDecoration(
          hintText: 'Name',
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
            _alcoholController.addAlcohol(alcohol: _textFieldController.text);
            Navigator.of(context).pop();
          },
        ),
      ],
    );
  }
}
