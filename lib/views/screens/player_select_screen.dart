import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:questionair_app/controllers/questionaire_controller.dart';
import 'package:questionair_app/models/questionaire/questionaire.dart';

import 'package:questionair_app/providers/questionaire_provider.dart';
import 'package:questionair_app/views/components/common/button/next_page_float_button.dart';
import 'package:questionair_app/views/components/common/button/show_dialog_button.dart';
import 'package:questionair_app/views/components/common/dialog/add_list_dialog.dart';
import 'package:questionair_app/views/screens/alcohol_select_screen.dart';

class PlayerSelectScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Player List'),
      ),
      body: _PlayerList(),
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

class _PlayerList extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final _playerState = useProvider(questionaireProvider.select((value) => value));
    final _playerController = useProvider(questionaireProvider.notifier);

    return ListView.builder(
      itemCount: _playerState.players.length,
      itemBuilder: (context, index) {
        return _buildListTile(_playerState, _playerController, index);
      },
    );
  }

  Widget _buildListTile(Questionaire _playerState, QuestionaireController _playerController, int index) {
    return ListTile(
      onTap: () {}, //タップしたら、FloatActionButtonが消えるようにする
      leading: Icon(Icons.account_circle), // 何かしらのiconに変える
      title: Text(_playerState.players[index]),
      tileColor: (() {
        // 即時関数で色を制御
        if (index < 6) {
          return Colors.amber[100 + (index * 100)]; //後々色は差し替える
        } else {
          return Colors.amber[1400 - (index * 100)]; //後々色は差し替える
        }
      })(),
      trailing: IconButton(
        icon: Icon(Icons.delete),
        onPressed: () {
          // Delete player
          _playerController.deletePlayer(index: index);
        },
      ),
    );
  }
}
