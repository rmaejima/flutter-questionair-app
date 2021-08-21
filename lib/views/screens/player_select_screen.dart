import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:questionair_app/providers/questionair_provider.dart';
import 'package:questionair_app/views/components/player_select/add_player_dialog.dart';
import 'package:questionair_app/views/screens/alcohol_select_screen.dart';

class PlayerSelectScreen extends HookWidget {
  @override
  Widget build(BuildContext context) {
    // プレイヤー追加と名前設定を行うコントローラーとステート
    // final _playersController = useProvider(questionairProvider.notifier);
    final _playersState = useProvider(questionairProvider.select((value) => value));

    return Scaffold(
      appBar: AppBar(
        title: Text('Player List'),
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
      floatingActionButton: Column(
        verticalDirection: VerticalDirection.up, // childrenの先頭を下に配置
        mainAxisSize: MainAxisSize.min,
        children: [
          FloatingActionButton(
            // 次の画面に遷移
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AlcoholSelectScreen(),
                ),
              );
            },
            tooltip: 'Increment',
            child: Text('次へ'), //tbd
          ),
          const SizedBox(height: 30),
          FloatingActionButton(
            // プレイヤーを追加
            onPressed: () => showDialog(context: context, builder: (BuildContext context) => AddPlayerDialog()),
            tooltip: 'Increment',
            child: Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
