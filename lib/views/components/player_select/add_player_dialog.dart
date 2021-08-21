import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:questionair_app/providers/questionair_provider.dart';

class AddPlayerDialog extends HookWidget {
  @override
  Widget build(BuildContext context) {
    var _textFieldController = TextEditingController();
    final _playersController = useProvider(questionairProvider.notifier);

    return AlertDialog(
      title: Text('誰が参加するの？'),
      content: TextField(
        controller: _textFieldController,
        decoration: InputDecoration(
          hintText: '酒好太郎',
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
            _playersController.addPlayer(playerName: _textFieldController.text);
            Navigator.of(context).pop();
          },
        ),
      ],
    );
  }
}
