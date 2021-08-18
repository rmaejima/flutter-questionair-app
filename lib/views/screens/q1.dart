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
      // body: ListView(
      //   children: [
      //     QButton(
      //       param: '良い',
      //       color: Colors.red,
      //       route: Q2(),
      //     ),
      //     QButton(
      //       param: '普通',
      //       color: Colors.yellow,
      //       route: Q2(),
      //     ),
      //     QButton(
      //       param: '悪い',
      //       color: Colors.blue,
      //       route: Q2(),
      //     ),
      //     ShowQuestionairState(),
      //   ],
      // ),
      body: ListView.builder(
        itemCount: _playersState.players.length,
        // itemCount: 10,
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
        onPressed: () {
          _playersController.addPlayer();
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
