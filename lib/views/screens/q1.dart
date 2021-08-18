import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:questionair_app/providers/questionair_provider.dart';

class Q1 extends HookWidget {
  @override
  Widget build(BuildContext context) {
    // プレイヤー追加と名前設定を行うコントローラーとステート
    final _playersController = useProvider(questionairProvider.notifier);
    final _playersState = useProvider(questionairProvider.select((value) => value));

    return Scaffold(
      appBar: AppBar(
        title: Text('プレイヤーを追加してください'),
      ),
      body: ListView.builder(
        itemCount: _playersState.players.length,
        itemBuilder: (context, index) {
          return Card(
            // それぞれの名前を表示
            child: Text(_playersState.players[index]),
            // child: Text('あいうえお'),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        // プレイヤーを追加
        onPressed: () => showDialog(context: context, builder: (BuildContext context) => AddPlayerDialog()),
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}

class AddPlayerDialog extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final _playersController = useProvider(questionairProvider.notifier);
    return AlertDialog(
      title: Text('名前を入力してください'),
      content: TextField(
        // controller: ,
        decoration: InputDecoration(
          hintText: 'Name',
        ),
        autofocus: true,
        // keyboardType: TextInputType.name,
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
            _playersController.addPlayer();
            Navigator.of(context).pop();
          },
        ),
      ],
    );
  }
}
