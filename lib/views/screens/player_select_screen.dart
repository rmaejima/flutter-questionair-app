import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:questionair_app/providers/questionair_provider.dart';
import 'package:questionair_app/views/components/common/button/next_page_float_button.dart';
import 'package:questionair_app/views/components/common/button/show_dialog_button.dart';
import 'package:questionair_app/views/components/common/dialog/add_list_dialog.dart';
import 'package:questionair_app/views/screens/alcohol_select_screen.dart';

class PlayerSelectScreen extends HookWidget {
  @override
  Widget build(BuildContext context) {
    // プレイヤー追加と名前設定を行うコントローラーとステート
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
          );
        },
      ),
      floatingActionButton: Column(
        verticalDirection: VerticalDirection.up, // childrenの先頭を下に配置
        mainAxisSize: MainAxisSize.min,
        children: [
          NextPageFloatButton(nextWidget: AlcoholSelectScreen()),
          const SizedBox(height: 30),
          ShowDialogButton(dialog: AddListDialog(AddDialog.player)),
        ],
      ),
    );
  }
}
